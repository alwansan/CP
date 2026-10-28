.class public final Lcom/shabakaty/cinemana/local/LocalRuntime;
.super Ljava/lang/Object;
.source "LocalRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;,
        Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;,
        Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;,
        Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle;,
        Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;
    }
.end annotation


# static fields
.field static final INTERVAL:J = 0x1499700L

.field public static final IO:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final JSON:Lcom/shabakaty/downloader/lr1;

.field static final METADATA:Ljava/util/concurrent/ExecutorService;

.field private static final MODELS:Ljava/lang/String; = "com.shabakaty.cinemana.domain.models.remote."

.field static final NETWORK:Ljava/util/concurrent/ExecutorService;

.field static volatile api:Ljava/lang/Object;

.field static volatile app:Landroid/content/Context;

.field static final cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile lastMigrationAttempt:J

.field private static lastStateSnapshot:J

.field private static final mutedProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final progressScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static volatile scanCancelled:Z

.field private static final scanning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile stateDirty:Z

.field private static storageProbe:J

.field static volatile store:Lcom/shabakaty/cinemana/local/LocalAccountStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->METADATA:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->NETWORK:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->scanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->mutedProgress:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->progressScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/shabakaty/downloader/lr1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lr1;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->JSON:Lcom/shabakaty/downloader/lr1;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->cache:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->ensureLegacy()V

    return-void
.end method

.method static synthetic access$100()Lcom/shabakaty/downloader/lr1;
    .locals 1

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->JSON:Lcom/shabakaty/downloader/lr1;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->scanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static avatar()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_7

    goto :goto_16

    :cond_7
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v2, "local_profile"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "avatar"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_16
    return-object v1
.end method

.method static cachedModel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v4

    invoke-virtual {v4, v3, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v3

    if-eqz v3, :cond_25

    iget-object v4, v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    const-string p0, "VideoModelApi"

    iget-object v0, v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_28
    new-instance p0, Ljava/io/IOException;

    const-string v0, "no local metadata"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static canonicalId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_73

    aget-object v4, v0, v3

    const-string v5, "-wal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_70

    const-string v5, "-shm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_70

    const-string v5, "-journal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_70

    :cond_2b
    const/4 v5, 0x0

    :try_start_2c
    sget-object v6, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v4, "SELECT videoId FROM video_status WHERE id=? OR videoId=? LIMIT 1"

    filled-new-array {p0, p0}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_45
    .catch Landroid/database/SQLException; {:try_start_2c .. :try_end_45} :catch_6a
    .catchall {:try_start_2c .. :try_end_45} :catchall_63

    :try_start_45
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_5e

    :try_start_4f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catch Landroid/database/SQLException; {:try_start_4f .. :try_end_52} :catch_6a
    .catchall {:try_start_4f .. :try_end_52} :catchall_63

    if-eqz v5, :cond_57

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_57
    return-object v6

    :cond_58
    :try_start_58
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v5, :cond_70

    goto :goto_6d

    :catchall_5e
    move-exception v6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_63
    .catch Landroid/database/SQLException; {:try_start_58 .. :try_end_63} :catch_6a
    .catchall {:try_start_58 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    if-eqz v5, :cond_69

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_69
    throw p0

    :catch_6a
    nop

    if-eqz v5, :cond_70

    :goto_6d
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_70
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_73
    return-object p0
.end method

.method static capture(Ljava/lang/Object;)V
    .locals 10

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->JSON:Lcom/shabakaty/downloader/lr1;

    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/lr1;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "nb"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[A-Za-z0-9_-]{1,100}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0x17

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "nb"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "ar_title"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "en_title"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "custom_ar_title"

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const-string v4, "custom_en_title"

    const/4 v6, 0x4

    aput-object v4, v3, v6

    const-string v4, "kind"

    const/4 v6, 0x5

    aput-object v4, v3, v6

    const-string v4, "rootSeries"

    const/4 v6, 0x6

    aput-object v4, v3, v6

    const-string v4, "season"

    const/4 v6, 0x7

    aput-object v4, v3, v6

    const-string v4, "episodeNummer"

    const/16 v6, 0x8

    aput-object v4, v3, v6

    const-string v4, "episode_flag"

    const/16 v6, 0x9

    aput-object v4, v3, v6

    const-string v4, "imgObjUrl"

    const/16 v6, 0xa

    aput-object v4, v3, v6

    const-string v4, "imgThumbObjUrl"

    const/16 v6, 0xb

    aput-object v4, v3, v6

    const-string v4, "imgMediumThumbObjUrl"

    const/16 v6, 0xc

    aput-object v4, v3, v6

    const-string v4, "year"

    const/16 v6, 0xd

    aput-object v4, v3, v6

    const-string v4, "duration"

    const/16 v6, 0xe

    aput-object v4, v3, v6

    const-string v4, "publishDate"

    const/16 v6, 0xf

    aput-object v4, v3, v6

    const-string v4, "rate"

    const/16 v6, 0x10

    aput-object v4, v3, v6

    const-string v4, "stars"

    const/16 v6, 0x11

    aput-object v4, v3, v6

    const-string v4, "filmRating"

    const/16 v6, 0x12

    aput-object v4, v3, v6

    const-string v4, "seriesRating"

    const/16 v6, 0x13

    aput-object v4, v3, v6

    const-string v4, "finished"

    const/16 v6, 0x14

    aput-object v4, v3, v6

    const-string v4, "ar_content"

    const/16 v6, 0x15

    aput-object v4, v3, v6

    const-string v4, "en_content"

    const/16 v6, 0x16

    aput-object v4, v3, v6

    const/4 v4, 0x0

    :goto_a6
    if-ge v4, v2, :cond_cf

    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cc

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_c9

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xfa0

    if-le v8, v9, :cond_c9

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_c9
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_cc
    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    :cond_cf
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4e20

    if-gt v1, v2, :cond_100

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->cache:Ljava/util/LinkedHashMap;

    monitor-enter v1
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_de} :catch_108

    :try_start_de
    invoke-virtual {v1, p0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e1
    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_fb

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e1

    :cond_fb
    monitor-exit v1

    goto :goto_10e

    :catchall_fd
    move-exception p0

    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_de .. :try_end_ff} :catchall_fd

    :try_start_ff
    throw p0

    :cond_100
    new-instance p0, Ljava/io/IOException;

    const-string v0, "metadata limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_108} :catch_108

    :catch_108
    move-exception p0

    const-string v0, "metadata"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10e
    return-void
.end method

.method static categories(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-static {v2}, Lcom/shabakaty/cinemana/local/Metadata269;->category(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "categories_filtered kept="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method static causeTypes(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-eqz p0, :cond_24

    const/4 v2, 0x4

    if-ge v1, v2, :cond_24

    if-lez v1, :cond_12

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_6

    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized data()Lcom/shabakaty/cinemana/local/LocalAccountStore;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "account_storage shared="

    const-class v1, Lcom/shabakaty/cinemana/local/LocalRuntime;

    monitor-enter v1

    :try_start_5
    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    if-nez v2, :cond_16

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    if-eqz v2, :cond_e

    goto :goto_16

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "local account not initialized"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_16
    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    if-nez v2, :cond_1e

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_171

    monitor-exit v1

    return-object v0

    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "data/local-account"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_ff

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->sharedDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_41

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_49

    :cond_41
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_49

    const/4 v6, 0x1

    goto :goto_4a

    :cond_49
    const/4 v6, 0x0

    :goto_4a
    if-eqz v6, :cond_4e

    move-object v7, v3

    goto :goto_4f

    :cond_4e
    move-object v7, v2

    :goto_4f
    new-instance v8, Ljava/io/File;

    const-string v9, "account.bin"

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v6, :cond_7d

    new-instance v9, Ljava/io/File;

    const-string v10, "account.bin"

    invoke-direct {v9, v3, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_7d

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7d

    sget-object v9, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v10, "local_profile"

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "loaded_shared"

    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_7d

    const/4 v9, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v9, 0x0

    :goto_7e
    if-eqz v6, :cond_a4

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_a4

    new-instance v10, Ljava/io/File;

    const-string v11, "account.bin"

    invoke-direct {v10, v3, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_a4

    new-instance v7, Lcom/shabakaty/cinemana/local/LocalAccountStore;

    new-instance v10, Lcom/shabakaty/cinemana/local/LocalRuntime$2;

    invoke-direct {v10}, Lcom/shabakaty/cinemana/local/LocalRuntime$2;-><init>()V

    invoke-direct {v7, v2, v10}, Lcom/shabakaty/cinemana/local/LocalAccountStore;-><init>(Ljava/io/File;Lcom/shabakaty/cinemana/local/LocalAccountStore$Events;)V

    invoke-virtual {v7, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->relocate(Ljava/io/File;)Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v3

    sput-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    goto :goto_b0

    :cond_a4
    new-instance v3, Lcom/shabakaty/cinemana/local/LocalAccountStore;

    new-instance v10, Lcom/shabakaty/cinemana/local/LocalRuntime$3;

    invoke-direct {v10}, Lcom/shabakaty/cinemana/local/LocalRuntime$3;-><init>()V

    invoke-direct {v3, v7, v10}, Lcom/shabakaty/cinemana/local/LocalAccountStore;-><init>(Ljava/io/File;Lcom/shabakaty/cinemana/local/LocalAccountStore$Events;)V

    sput-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    :goto_b0
    if-eqz v6, :cond_da

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v7, "local_profile"

    invoke-virtual {v3, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "loaded_shared"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_da

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/File;

    const-string v4, "avatar.jpg"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_da
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->storageProbe:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->updateProfile()V

    if-eqz v9, :cond_16d

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_16d

    :cond_ff
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->directory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/shabakaty/cinemana/local/LocalRuntime;->storageProbe:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7530

    cmp-long v0, v6, v8

    if-lez v0, :cond_16d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/shabakaty/cinemana/local/LocalRuntime;->storageProbe:J

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->sharedDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_12e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_16d

    :cond_12e
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_16d

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    invoke-virtual {v3, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->relocate(Ljava/io/File;)Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v3, "local_profile"

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "loaded_shared"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/io/File;

    const-string v3, "account.bin"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    const-string v3, "avatar.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->updateProfile()V

    const-string v0, "account_storage shared=true"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    :cond_16d
    :goto_16d
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;
    :try_end_16f
    .catchall {:try_start_1e .. :try_end_16f} :catchall_171

    monitor-exit v1

    return-object v0

    :catchall_171
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static decorate(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_account266"

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    const-string v1, "profile_login_linear"

    const-string v2, "login_qr_button"

    const-string v3, "profile_logout_item"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda3;

    invoke-direct {v0, v2, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda3;-><init>(Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static deliver()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_16

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "notification_permission_missing"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void

    :cond_16
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "local_episodes"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_33

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v4, "\u062d\u0644\u0642\u0627\u062a \u062c\u062f\u064a\u062f\u0629"

    const/4 v5, 0x3

    invoke-direct {v1, v2, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_40

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_40

    return-void

    :cond_40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_4f

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-nez v1, :cond_4f

    return-void

    :cond_4f
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->inbox()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_5d
    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "delivered_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v1, v8, v9}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_88

    goto :goto_5d

    :cond_88
    new-instance v9, Landroid/content/Intent;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "https://cinemana.shabakaty.cc/video/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v9, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v11, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v11, 0x14000000

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v11, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    iget-object v12, v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v13, v14, :cond_c2

    const/high16 v13, 0x4000000

    goto :goto_c3

    :cond_c2
    const/4 v13, 0x0

    :goto_c3
    const/high16 v14, 0x8000000

    or-int/2addr v13, v14

    invoke-static {v11, v12, v9, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v3, :cond_d6

    new-instance v11, Landroid/app/Notification$Builder;

    sget-object v12, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-direct {v11, v12, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_dd

    :cond_d6
    new-instance v11, Landroid/app/Notification$Builder;

    sget-object v12, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_dd
    const v12, 0x1080024

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const-string v13, "\u062d\u0644\u0642\u0629 \u062c\u062f\u064a\u062f\u0629"

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    iget-object v13, v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "local_episode_"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x10a

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v0, v7, v9, v11}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-virtual {v1, v8, v10}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-lt v6, v7, :cond_5d

    :cond_11d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifications_delivered count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void
.end method

.method static dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->JSON:Lcom/shabakaty/downloader/lr1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.shabakaty.cinemana.domain.models.remote."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/shabakaty/downloader/lr1;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static dtoArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoModelApi"

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    return-object v0
.end method

.method private static ensureLegacy()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    const-string v1, "legacy_seeded"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->lastMigrationAttempt:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-gez v6, :cond_25

    return-void

    :cond_25
    sput-wide v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->lastMigrationAttempt:J

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->snapshotLegacy(Z)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_32

    :catch_2c
    move-exception v0

    const-string v1, "legacy_migration"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_32
    return-void
.end method

.method static episodeItems(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_a2

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "nb"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "[A-Za-z0-9_-]{1,100}"

    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v18, "publishDate"

    const-string v19, "duration"

    const-string v8, "nb"

    const-string v9, "kind"

    const-string v10, "rootSeries"

    const-string v11, "season"

    const-string v12, "episodeNummer"

    const-string v13, "ar_title"

    const-string v14, "en_title"

    const-string v15, "imgObjUrl"

    const-string v16, "imgThumbObjUrl"

    const-string v17, "imgMediumThumbObjUrl"

    filled-new-array/range {v8 .. v19}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    :goto_43
    const/16 v9, 0xc

    if-ge v8, v9, :cond_59

    aget-object v9, v6, v8

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_56

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_56
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    :cond_59
    new-instance v12, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p0

    iget-object v8, v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u2014 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "season"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "episodeNummer"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_9a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid episode id"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a2
    return-object v0
.end method

.method static episodes(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "episode_http status="

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://cinemana.shabakaty.cc/api/android/videoSeason/id/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1f40

    :try_start_1d
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne v2, v0, :cond_bf

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b7

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_62
    .catchall {:try_start_1d .. :try_end_62} :catchall_c7

    const/16 v3, 0x2000

    :try_start_64
    new-array v3, v3, [B

    :goto_66
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_82

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v5, v4

    const/high16 v6, 0x200000

    if-gt v5, v6, :cond_7a

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_66

    :cond_7a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "episode response limit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_82
    .catchall {:try_start_64 .. :try_end_82} :catchall_ab

    :cond_82
    if-eqz v2, :cond_87

    :try_start_84
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_87
    new-instance v1, Lorg/json/JSONArray;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_9b
    .catchall {:try_start_84 .. :try_end_9b} :catchall_c7

    const/16 v2, 0x2710

    if-gt v0, v2, :cond_a3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :cond_a3
    :try_start_a3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "episode limit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ab
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_c7

    :catchall_ab
    move-exception v0

    if-eqz v2, :cond_b6

    :try_start_ae
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2

    goto :goto_b6

    :catchall_b2
    move-exception v1

    :try_start_b3
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b6
    :goto_b6
    throw v0

    :cond_b7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "episode content type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    new-instance v0, Ljava/io/IOException;

    const-string v1, "episode http"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c7
    .catchall {:try_start_b3 .. :try_end_c7} :catchall_c7

    :catchall_c7
    move-exception v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method

.method static failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_54

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.shabakaty.cinemana.local"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_54
    const-string v0, ""

    :goto_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_failed type="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->causeTypes(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void
.end method

.method static flushProgress()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/shabakaty/cinemana/local/LocalRuntime;->canonicalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/cinemana/local/LocalRuntime;->mutedProgress:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    goto :goto_1b

    :cond_3a
    invoke-static {v5}, Lcom/shabakaty/cinemana/local/LocalRuntime;->item(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v5

    new-instance v12, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    iget-object v7, v5, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    iget-object v8, v5, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, v5, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_58
    sget-object v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->merge(Ljava/util/Map;)V

    :cond_6a
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_72

    :cond_8c
    sget-boolean v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->stateDirty:Z

    if-eqz v0, :cond_a1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->lastStateSnapshot:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_a1

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->snapshotPreferences()V

    :cond_a1
    return-void
.end method

.method public static flushProgressAsync()V
    .locals 2

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_25

    aget-byte v4, p0, v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const-string v4, "%02x"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpRequest(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "http_begin route="

    :try_start_2
    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->requestLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    return-void
.end method

.method public static httpResponse(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "http_result route="

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->requestLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " status="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_3f

    :catch_3f
    :cond_3f
    return-void
.end method

.method static importAccount(Ljava/io/InputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "0"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_b
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_28

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v4, v3

    const/high16 v6, 0x2000000

    if-gt v4, v6, :cond_20

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    :cond_20
    new-instance p0, Ljava/io/IOException;

    const-string v0, "archive limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    new-instance p0, Ljava/io/File;

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "account-restore-stage"

    invoke-direct {p0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->removeStage(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_13f

    :try_start_3e
    new-instance v2, Lcom/shabakaty/cinemana/local/LocalAccountStore;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;-><init>(Ljava/io/File;Lcom/shabakaty/cinemana/local/LocalAccountStore$Events;)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->importZip(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->avatar()[B

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x1

    if-lez v4, :cond_7e

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v7, v3

    invoke-static {v3, v5, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_76

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_76

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v7, 0x400

    if-gt v3, v7, :cond_76

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v3, v7, :cond_76

    goto :goto_7e

    :cond_76
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid avatar"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    :goto_7e
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v3

    array-length v4, v3

    :goto_83
    if-ge v5, v4, :cond_f3

    aget-object v7, v3, v5

    invoke-virtual {v2, v7}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8f
    :goto_8f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    iget-object v10, v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8f

    new-instance v10, Lorg/json/JSONObject;

    iget-object v11, v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-ne v7, v11, :cond_d9

    iget-object v9, v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    const-string v11, "settings"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8f

    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    :goto_bc
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "(filter|app|subtitles)_[A-Za-z]+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d1

    goto :goto_bc

    :cond_d1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid settings"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d9
    iget-object v9, v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    const-string v11, "nb"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e8

    goto :goto_8f

    :cond_e8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "metadata id mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f0
    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    :cond_f3
    sget-object v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v2, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/local/BackupState;->decode(Ljava/util/List;)Ljava/util/Map;

    const-string v3, "parental"

    invoke-virtual {v2, v3, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "translation"

    invoke-virtual {v2, v4, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v3, :cond_132

    const/4 v2, 0x3

    if-gt v3, v2, :cond_132

    if-ltz v0, :cond_132

    if-gt v0, v6, :cond_132

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->importZip(Ljava/io/InputStream;)V
    :try_end_12e
    .catchall {:try_start_3e .. :try_end_12e} :catchall_13a

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->removeStage(Ljava/io/File;)V

    return-void

    :cond_132
    :try_start_132
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid filter"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13a
    .catchall {:try_start_132 .. :try_end_13a} :catchall_13a

    :catchall_13a
    move-exception v0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->removeStage(Ljava/io/File;)V

    throw v0

    :cond_13f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "staging unavailable"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/shabakaty/cinemana/local/LocalRuntime;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/LocalAccountLog;->init(Landroid/content/Context;)V

    const-string p0, "build=PATCH269"

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$1;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime$1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_25

    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static item(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->cache:Ljava/util/LinkedHashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_69

    if-nez v7, :cond_2d

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_2d

    aget-object v3, v0, v2

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v4

    invoke-virtual {v4, v3, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v4, v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2a

    return-object v3

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2d
    if-nez v7, :cond_45

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0639\u0645\u0644 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0

    :cond_45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ar_title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5e

    const-string v1, "en_title"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5f

    :cond_5e
    move-object v4, v1

    :goto_5f
    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    const-wide/16 v5, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0

    :catchall_69
    move-exception p0

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method static kind(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    return-object p0

    :cond_b
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    return-object p0

    :cond_16
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    return-object p0

    :cond_21
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unsupported personal list"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$data$0()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->restoreLegacy()V

    const-string v0, "com.shabakaty.cinemana.ca1.Continue106"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "portableReload"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    aput-object v2, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account_reinstalled_restored"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v0

    const-string v1, "reinstall_restore"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2d
    return-void
.end method

.method static synthetic lambda$decorate$6([Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .locals 0

    array-length p3, p0

    const/4 p4, 0x0

    :goto_2
    if-ge p4, p3, :cond_28

    aget-object p5, p0, p4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const-string p7, "id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p6, p5, p7, p8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_25

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p6

    const/16 p7, 0x8

    if-eq p6, p7, :cond_25

    invoke-virtual {p5, p7}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_28
    return-void
.end method

.method static synthetic lambda$decorate$7(Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v9}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static synthetic lambda$flushProgressAsync$3()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->flushProgress()V

    sget-boolean v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->stateDirty:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->snapshotPreferences()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    const-string v1, "progress"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_11
    return-void
.end method

.method static synthetic lambda$logout$1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$progress$2()V
    .locals 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->flushProgress()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_c
    .catchall {:try_start_1 .. :try_end_4} :catchall_a

    :goto_4
    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->progressScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_13

    :catchall_a
    move-exception v1

    goto :goto_14

    :catch_c
    move-exception v1

    :try_start_d
    const-string v2, "progress"

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_a

    goto :goto_4

    :goto_13
    return-void

    :goto_14
    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->progressScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method

.method static synthetic lambda$removeProgress$5(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->canonicalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_2b
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->removeProgress(Ljava/lang/String;)V

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v1, :cond_85

    aget-object v4, v0, v3

    const-string v5, "-wal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_82

    const-string v5, "-shm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_82

    const-string v5, "-journal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_a1

    if-eqz v5, :cond_58

    goto :goto_82

    :cond_58
    const/4 v5, 0x0

    :try_start_59
    sget-object v6, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v4, "UPDATE video_status SET videoProgress=0 WHERE videoId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_71
    .catch Landroid/database/SQLException; {:try_start_59 .. :try_end_71} :catch_7e
    .catchall {:try_start_59 .. :try_end_71} :catchall_77

    if-eqz v5, :cond_82

    :goto_73
    :try_start_73
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_82

    :catchall_77
    move-exception p0

    if-eqz v5, :cond_7d

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7d
    throw p0

    :catch_7e
    nop

    if-eqz v5, :cond_82

    goto :goto_73

    :cond_82
    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_85
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->snapshotPreferences()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "continue_removed id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_a0} :catch_a1

    goto :goto_a7

    :catch_a1
    move-exception p0

    const-string v0, "continue_remove"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a7
    return-void
.end method

.method static synthetic lambda$requestBaseline$8(Ljava/lang/String;)V
    .locals 3

    const-string v0, "subscription_baseline id="

    :try_start_2
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v1, v2, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-virtual {v1, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->hasBaseline(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_4e

    :cond_15
    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->episodes(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->item(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->episodeItems(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->reconcile(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " count="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->baselineSize(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_4f

    goto :goto_55

    :cond_4e
    :goto_4e
    return-void

    :catch_4f
    move-exception p0

    const-string v0, "subscription_baseline"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    return-void
.end method

.method static synthetic lambda$watchedChanged$4(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "watched_changed id="

    :try_start_2
    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->canonicalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_16

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->item(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->put(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V

    goto :goto_1f

    :cond_16
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v1, v2, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->remove(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)V

    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3b

    goto :goto_41

    :catch_3b
    move-exception p0

    const-string p1, "watched_sync"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_41
    return-void
.end method

.method static local(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->ensureLegacy()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api_local operation="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e3

    const-string v1, "r"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e3

    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e3

    const-string v1, "E"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e3

    const-string v1, "l"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a2

    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_56
    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, "rootSeries"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    :cond_7a
    iget-object v1, v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "highlight_local id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " count="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-object p1

    :cond_a2
    const-string v1, "a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "rating_"

    const/4 v4, 0x1

    if-eqz v1, :cond_121

    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "like"

    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "dislike"

    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v1

    if-eqz v1, :cond_eb

    const/4 v1, 0x1

    goto :goto_ec

    :cond_eb
    const/4 v1, 0x0

    :goto_ec
    const-string v3, "favorit"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v3, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v3

    if-eqz v3, :cond_fb

    const/4 v2, 0x1

    :cond_fb
    const-string v3, "watched"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v2, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object p0

    if-eqz p0, :cond_10a

    goto :goto_10b

    :cond_10a
    move-object v5, v7

    :goto_10b
    const-string p0, "watchLater"

    invoke-virtual {v1, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->JSON:Lcom/shabakaty/downloader/lr1;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.shabakaty.downloader.r25"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/lr1;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_121
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "user.LogoutResponseApi"

    const/4 v7, 0x2

    if-nez v5, :cond_2bb

    const-string v5, "d"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_136

    goto/16 :goto_2bb

    :cond_136
    const-string v1, "v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_295

    const-string v5, "y"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_148

    goto/16 :goto_295

    :cond_148
    const-string v1, "e"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cf

    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->kind(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/16 v0, 0x1e

    if-nez p0, :cond_17e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/Metadata269;->hydrate(Ljava/util/List;)V

    :cond_17e
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-ltz p0, :cond_1c7

    const v2, 0x186a0

    if-gt p0, v2, :cond_1c7

    mul-int/lit8 p0, p0, 0x1e

    move v2, p0

    :goto_18d
    add-int/lit8 v3, p0, 0x1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_1a9

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v3}, Lcom/shabakaty/cinemana/local/LocalRuntime;->model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18d

    :cond_1a9
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "data"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "status"

    const-string v0, "success"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "user.UserListApi"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1c7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid page"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1cf
    const-string v1, "p"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ff

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    sget-object p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1e6

    :cond_1fa
    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dtoArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1ff
    const-string v1, "q"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_265

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->inbox()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x64

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v2, v1, :cond_241

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_227

    :cond_241
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "new"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "notifications"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "user.NotificationsListApi"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_265
    const-string v1, "C"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "{\"status\":\"true\",\"likeNumber\":\"0\",\"dislikeNumebr\":\"0\"}"

    invoke-static {v6, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_28f
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    :cond_295
    :goto_295
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b3

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->item(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->put(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V

    const-string p0, "subscription_baseline_pending"

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->requestBaseline(Ljava/lang/String;)V

    goto :goto_2b8

    :cond_2b3
    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->remove(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)V

    :goto_2b8
    const-string p0, "true"

    return-object p0

    :cond_2bb
    :goto_2bb
    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->kind(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d9

    invoke-static {v2}, Lcom/shabakaty/cinemana/local/LocalRuntime;->item(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->put(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V

    goto :goto_2dc

    :cond_2d9
    invoke-virtual {v0, p1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->remove(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)V

    :goto_2dc
    const-string p0, "{\"status\":\"true\"}"

    invoke-static {v6, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2e3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u0627\u0644\u062a\u0639\u0644\u064a\u0642\u0627\u062a \u0639\u0644\u0649 \u0627\u0644\u062e\u0627\u062f\u0645 \u062a\u062d\u062a\u0627\u062c \u062d\u0633\u0627\u0628 \u0634\u0628\u0643\u062a\u064a\u061b \u062d\u0633\u0627\u0628\u0643 \u0627\u0644\u062d\u0627\u0644\u064a \u0645\u062d\u0644\u064a"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CinemanaLocal"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/LocalAccountLog;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public static logout()Lcom/shabakaty/downloader/f74;
    .locals 2

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/Metadata269;->enrich(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static name()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v1, "\u062d\u0633\u0627\u0628\u064a"

    if-nez v0, :cond_7

    goto :goto_16

    :cond_7
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v2, "local_profile"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_16
    return-object v1
.end method

.method public static open(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static overlay(Ljava/lang/Object;)V
    .locals 7

    const-string v0, "status"

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    if-eqz v1, :cond_b8

    if-nez p0, :cond_a

    goto/16 :goto_b8

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "nb"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rootSeries"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[1-9][0-9]*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_34

    :cond_33
    move-object v4, v3

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4f

    const-string v5, "com.shabakaty.downloader.q25"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "v"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v1, v0, v4}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_65

    const/4 v0, 0x1

    goto :goto_66

    :cond_65
    const/4 v0, 0x0

    :goto_66
    invoke-virtual {p0, v5, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v1, v0, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v0

    if-eqz v0, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v2, 0x0

    :goto_7d
    invoke-virtual {p0, v5, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "w"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v1, v0, v4}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v0

    if-eqz v0, :cond_95

    const-string v0, "1"

    goto :goto_97

    :cond_95
    const-string v0, "0"

    :goto_97
    invoke-virtual {p0, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v1, p0, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object p0

    if-eqz p0, :cond_b8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-wide v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->positionMs:J

    invoke-virtual {v0, v5, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b1} :catch_b2

    goto :goto_b8

    :catch_b2
    move-exception p0

    const-string v0, "status_overlay"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b8
    :goto_b8
    return-void
.end method

.method public static profileResume(Ljava/lang/Object;)V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "H0"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->avatar()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1d} :catch_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_24

    :catch_1e
    move-exception p0

    const-string v0, "avatar_refresh"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_24
    :goto_24
    return-void
.end method

.method public static profileState(Ljava/lang/Object;)V
    .locals 7

    const-string v0, "postValue"

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "o"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->avatar()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_52} :catch_53

    goto :goto_59

    :catch_53
    move-exception p0

    const-string v0, "profile_refresh"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_59
    return-void
.end method

.method public static progress(Ljava/lang/String;J)V
    .locals 2

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->progressScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_21

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v0, 0xa

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_21
    return-void
.end method

.method public static progressValue(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v2, v3, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    iget-wide v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->positionMs:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_11

    :catch_11
    :goto_11
    return-wide v0
.end method

.method static refreshStorage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->storageProbe:J

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    return-void
.end method

.method public static removeProgress(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->mutedProgress:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static removeStage(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static requestBaseline(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->NETWORK:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static requestLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "videoSeason"

    const-string v1, "transcoddedFiles"

    const-string v2, "allVideoInfo"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_26
    const/4 v2, 0x3

    if-ge v1, v2, :cond_69

    aget-object v2, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_69
    const-string p0, ""

    return-object p0
.end method

.method public static requestScan(Z)V
    .locals 3

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->scanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_19

    :cond_f
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->NETWORK:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$5;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime$5;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_19
    :goto_19
    return-void
.end method

.method static restoreLegacy()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v1, "local"

    const-string v2, "settings"

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    const-string v3, "legacy_seeded"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ca1_continue106"

    const-string v3, "ca1_episode_context107"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1d
    const/4 v6, 0x2

    if-ge v5, v6, :cond_36

    aget-object v6, v0, v5

    sget-object v7, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v7, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_36
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    sget-object v5, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v5}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/BackupState;->decode(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_de

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    sget-object v7, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_76
    :goto_76
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ce

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_96

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_76

    :cond_96
    instance-of v10, v8, Ljava/lang/Long;

    if-eqz v10, :cond_a4

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v7, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_76

    :cond_a4
    instance-of v10, v8, Ljava/lang/Integer;

    if-eqz v10, :cond_b2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_76

    :cond_b2
    instance-of v10, v8, Ljava/lang/Boolean;

    if-eqz v10, :cond_c0

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_76

    :cond_c0
    instance-of v10, v8, Ljava/lang/Float;

    if-eqz v10, :cond_76

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_76

    :cond_ce
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_d6

    goto/16 :goto_4c

    :cond_d6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "preferences restore failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_de
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v5, "local_settings"

    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v5

    const-string v7, "parental"

    const-string v8, "0"

    invoke-virtual {v5, v7, v8}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v5

    const-string v7, "translation"

    invoke-virtual {v5, v7, v8}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_113
    if-ge v8, v7, :cond_47a

    aget-object v0, v5, v8

    const-string v9, "-wal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_468

    const-string v9, "-shm"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_468

    const-string v9, "-journal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_131

    goto/16 :goto_468

    :cond_131
    const/4 v9, 0x0

    :try_start_132
    sget-object v10, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v10, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_140} :catch_44b
    .catchall {:try_start_132 .. :try_end_140} :catchall_448

    :try_start_140
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'video_status\'"

    invoke-virtual {v10, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_146} :catch_43f
    .catchall {:try_start_140 .. :try_end_146} :catchall_460

    :try_start_146
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_14a
    .catchall {:try_start_146 .. :try_end_14a} :catchall_430

    :try_start_14a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14d} :catch_43f
    .catchall {:try_start_14a .. :try_end_14d} :catchall_460

    if-nez v0, :cond_156

    if-eqz v10, :cond_468

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_468

    :cond_156
    :try_start_156
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_159} :catch_43f
    .catchall {:try_start_156 .. :try_end_159} :catchall_460

    :try_start_159
    const-string v0, "UPDATE video_status SET favorite=0,watched=0,watchLater=\'false\',videoProgress=0"

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v11, 0x5

    new-array v12, v11, [Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    sget-object v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    aput-object v13, v12, v3

    sget-object v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    sget-object v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    aput-object v13, v12, v6

    sget-object v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v15, 0x3

    aput-object v13, v12, v15

    sget-object v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v15, 0x4

    aput-object v13, v12, v15

    const/4 v13, 0x0

    :goto_17e
    if-ge v13, v11, :cond_1a7

    aget-object v11, v12, v13

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    iget-object v15, v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v15, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v15, 0x4

    goto :goto_18e

    :cond_1a1
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x5

    const/4 v15, 0x4

    goto :goto_17e

    :cond_1a7
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v11, "PRAGMA table_info(video_model)"

    invoke-virtual {v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1b2
    .catchall {:try_start_159 .. :try_end_1b2} :catchall_424

    :goto_1b2
    :try_start_1b2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1c4

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c3
    .catchall {:try_start_1b2 .. :try_end_1c3} :catchall_416

    goto :goto_1b2

    :cond_1c4
    :try_start_1c4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1cf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_1d3
    .catchall {:try_start_1c4 .. :try_end_1d3} :catchall_424

    const-string v12, "watched"

    const-string v13, "videoProgress"

    const-string v15, "watchLater"

    const-string v6, "favorite"

    if-eqz v11, :cond_2d5

    :try_start_1dd
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v11}, Lcom/shabakaty/cinemana/local/LocalRuntime;->model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;

    move-result-object v14

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1f4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_1f8
    .catchall {:try_start_1dd .. :try_end_1f8} :catchall_2ce

    move-object/from16 v19, v0

    const-string v0, "enTitle"

    if-eqz v18, :cond_267

    :try_start_1fe
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    check-cast v3, Ljava/lang/String;
    :try_end_20e
    .catchall {:try_start_1fe .. :try_end_20e} :catchall_2ce

    move-object/from16 v20, v5

    :try_start_210
    const-string v5, "arTitle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_216
    .catchall {:try_start_210 .. :try_end_216} :catchall_265

    if-eqz v5, :cond_21f

    :try_start_218
    const-string v0, "ar_title"
    :try_end_21a
    .catchall {:try_start_218 .. :try_end_21a} :catchall_21b

    goto :goto_23f

    :catchall_21b
    move-exception v0

    move-object v14, v4

    goto/16 :goto_428

    :cond_21f
    :try_start_21f
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_223
    .catchall {:try_start_21f .. :try_end_223} :catchall_265

    if-eqz v0, :cond_228

    :try_start_225
    const-string v0, "en_title"
    :try_end_227
    .catchall {:try_start_225 .. :try_end_227} :catchall_21b

    goto :goto_23f

    :cond_228
    :try_start_228
    const-string v0, "arContent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_22e
    .catchall {:try_start_228 .. :try_end_22e} :catchall_265

    if-eqz v0, :cond_233

    :try_start_230
    const-string v0, "ar_content"
    :try_end_232
    .catchall {:try_start_230 .. :try_end_232} :catchall_21b

    goto :goto_23f

    :cond_233
    :try_start_233
    const-string v0, "enContent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_239
    .catchall {:try_start_233 .. :try_end_239} :catchall_265

    if-eqz v0, :cond_23e

    :try_start_23b
    const-string v0, "en_content"
    :try_end_23d
    .catchall {:try_start_23b .. :try_end_23d} :catchall_21b

    goto :goto_23f

    :cond_23e
    move-object v0, v3

    :goto_23f
    :try_start_23f
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_245
    .catchall {:try_start_23f .. :try_end_245} :catchall_265

    move/from16 v18, v7

    :try_start_247
    const-string v7, "TEXT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_259

    const-string v5, ""

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25c

    :cond_259
    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_25c
    move/from16 v7, v18

    move-object/from16 v0, v19

    move-object/from16 v5, v20

    move-object/from16 v3, v21

    goto :goto_1f4

    :catchall_265
    move-exception v0

    goto :goto_2d1

    :cond_267
    move-object/from16 v21, v3

    move-object/from16 v20, v5

    move/from16 v18, v7

    const-string v3, "nb"

    iget-object v5, v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v9, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_283

    iget-object v3, v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_283
    const-string v0, "video_model"

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-virtual {v10, v0, v5, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "id"

    iget-object v5, v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "videoId"

    iget-object v5, v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "liked"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "disLiked"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "annoying"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "false"

    invoke-virtual {v0, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "video_status"

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v10, v3, v6, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move/from16 v7, v18

    move-object/from16 v0, v19

    move-object/from16 v5, v20

    move-object/from16 v3, v21

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1cf

    :catchall_2ce
    move-exception v0

    move-object/from16 v20, v5

    :goto_2d1
    move/from16 v18, v7

    goto/16 :goto_414

    :cond_2d5
    move-object/from16 v20, v5

    move/from16 v18, v7

    const/4 v0, 0x4

    new-array v3, v0, [Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;
    :try_end_2de
    .catchall {:try_start_247 .. :try_end_2de} :catchall_413

    const/4 v5, 0x0

    :try_start_2df
    aput-object v0, v3, v5
    :try_end_2e1
    .catchall {:try_start_2df .. :try_end_2e1} :catchall_410

    :try_start_2e1
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v5, 0x1

    aput-object v0, v3, v5

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v5, 0x2

    aput-object v0, v3, v5

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v5, 0x3

    aput-object v0, v3, v5
    :try_end_2f0
    .catchall {:try_start_2e1 .. :try_end_2f0} :catchall_413

    const/4 v0, 0x4

    const/4 v5, 0x0

    :goto_2f2
    if-ge v5, v0, :cond_37c

    :try_start_2f4
    aget-object v0, v3, v5

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_302
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_36c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    sget-object v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-ne v0, v11, :cond_314

    move-object v11, v6

    goto :goto_321

    :cond_314
    sget-object v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-ne v0, v11, :cond_31a

    move-object v11, v15

    goto :goto_321

    :cond_31a
    sget-object v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-ne v0, v11, :cond_320

    move-object v11, v12

    goto :goto_321

    :cond_320
    move-object v11, v13

    :goto_321
    sget-object v14, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;
    :try_end_323
    .catchall {:try_start_2f4 .. :try_end_323} :catchall_377

    if-ne v0, v14, :cond_32e

    move-object/from16 v17, v3

    move-object v14, v4

    :try_start_328
    iget-wide v3, v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->positionMs:J
    :try_end_32a
    .catchall {:try_start_328 .. :try_end_32a} :catchall_32b

    goto :goto_333

    :catchall_32b
    move-exception v0

    goto/16 :goto_42a

    :cond_32e
    move-object/from16 v17, v3

    move-object v14, v4

    const-wide/16 v3, 0x1

    :goto_333
    :try_start_333
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    const-string v0, "UPDATE video_status SET "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=? WHERE videoId=? OR id=?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    new-array v11, v4, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v11, v16

    iget-object v3, v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v3, v11, v16

    iget-object v3, v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;
    :try_end_35e
    .catchall {:try_start_333 .. :try_end_35e} :catchall_36a

    const/4 v9, 0x2

    :try_start_35f
    aput-object v3, v11, v9

    invoke-virtual {v10, v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v14

    move-object/from16 v3, v17

    move-object/from16 v0, v19

    goto :goto_302

    :catchall_36a
    move-exception v0

    goto :goto_379

    :cond_36c
    move-object/from16 v17, v3

    move-object v14, v4

    const/4 v4, 0x3

    const/4 v9, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object v4, v14

    const/4 v0, 0x4

    goto/16 :goto_2f2

    :catchall_377
    move-exception v0

    move-object v14, v4

    :goto_379
    const/4 v9, 0x2

    goto/16 :goto_40e

    :cond_37c
    move-object v14, v4

    const/4 v9, 0x2

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v0

    if-eqz v0, :cond_3fd

    new-instance v3, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v6, "PRAGMA table_info(settings)"

    const/4 v7, 0x0

    invoke-virtual {v10, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_3a6
    .catchall {:try_start_35f .. :try_end_3a6} :catchall_40d

    :goto_3a6
    :try_start_3a6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3b5

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3b4
    .catchall {:try_start_3a6 .. :try_end_3b4} :catchall_3f7

    goto :goto_3a6

    :cond_3b5
    :try_start_3b5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3b8
    :goto_3b8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_3bc
    .catchall {:try_start_3b5 .. :try_end_3bc} :catchall_40d

    const-string v7, "userId"

    if-eqz v6, :cond_3da

    :try_start_3c0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b8

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b8

    :cond_3da
    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_3fd

    const-string v0, "userId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;
    :try_end_3e5
    .catchall {:try_start_3c0 .. :try_end_3e5} :catchall_40d

    const/4 v5, 0x0

    :try_start_3e6
    aput-object v1, v3, v5

    invoke-virtual {v10, v2, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3fe

    invoke-virtual {v4, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_3fe

    :catchall_3f7
    move-exception v0

    const/4 v5, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3fd
    const/4 v5, 0x0

    :cond_3fe
    :goto_3fe
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_401
    .catchall {:try_start_3e6 .. :try_end_401} :catchall_422

    :try_start_401
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "legacy_progress_restored"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_409
    .catch Ljava/lang/Exception; {:try_start_401 .. :try_end_409} :catch_43d
    .catchall {:try_start_401 .. :try_end_409} :catchall_460

    if-eqz v10, :cond_46f

    goto/16 :goto_45c

    :catchall_40d
    move-exception v0

    :goto_40e
    const/4 v5, 0x0

    goto :goto_42c

    :catchall_410
    move-exception v0

    move-object v14, v4

    goto :goto_42b

    :catchall_413
    move-exception v0

    :goto_414
    move-object v14, v4

    goto :goto_42a

    :catchall_416
    move-exception v0

    move-object v14, v4

    move-object/from16 v20, v5

    move/from16 v18, v7

    const/4 v5, 0x0

    const/4 v9, 0x2

    :try_start_41e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_422
    .catchall {:try_start_41e .. :try_end_422} :catchall_422

    :catchall_422
    move-exception v0

    goto :goto_42c

    :catchall_424
    move-exception v0

    move-object v14, v4

    move-object/from16 v20, v5

    :goto_428
    move/from16 v18, v7

    :goto_42a
    const/4 v5, 0x0

    :goto_42b
    const/4 v9, 0x2

    :goto_42c
    :try_start_42c
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_430
    move-exception v0

    move-object v14, v4

    move-object/from16 v20, v5

    move/from16 v18, v7

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object v3, v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_43d
    .catch Ljava/lang/Exception; {:try_start_42c .. :try_end_43d} :catch_43d
    .catchall {:try_start_42c .. :try_end_43d} :catchall_460

    :catch_43d
    move-exception v0

    goto :goto_455

    :catch_43f
    move-exception v0

    move-object v14, v4

    move-object/from16 v20, v5

    move/from16 v18, v7

    const/4 v5, 0x0

    const/4 v9, 0x2

    goto :goto_455

    :catchall_448
    move-exception v0

    move-object v3, v9

    goto :goto_462

    :catch_44b
    move-exception v0

    move-object v14, v4

    move-object/from16 v20, v5

    move/from16 v18, v7

    move-object v3, v9

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object v10, v3

    :goto_455
    :try_start_455
    const-string v3, "legacy_restore"

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45a
    .catchall {:try_start_455 .. :try_end_45a} :catchall_460

    if-eqz v10, :cond_46f

    :goto_45c
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_46f

    :catchall_460
    move-exception v0

    move-object v9, v10

    :goto_462
    if-eqz v9, :cond_467

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_467
    throw v0

    :cond_468
    :goto_468
    move-object v14, v4

    move-object/from16 v20, v5

    move/from16 v18, v7

    const/4 v5, 0x0

    const/4 v9, 0x2

    :cond_46f
    :goto_46f
    add-int/lit8 v8, v8, 0x1

    move-object v4, v14

    move/from16 v7, v18

    move-object/from16 v5, v20

    const/4 v3, 0x0

    const/4 v6, 0x2

    goto/16 :goto_113

    :cond_47a
    return-void
.end method

.method public static resumeProgress(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->mutedProgress:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->stateDirty:Z

    return-void
.end method

.method static safeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_b

    const-string v0, "[A-Za-z0-9_-]{1,100}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const-string p0, "invalid"

    :goto_d
    return-object p0
.end method

.method static scan(Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_scan"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-ltz v7, :cond_2b

    sub-long v5, v1, v5

    if-eqz p0, :cond_20

    const-wide/32 v7, 0xea60

    goto :goto_23

    :cond_20
    const-wide/32 v7, 0x1499700

    :goto_23
    cmp-long p0, v5, v7

    if-gez p0, :cond_2b

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->deliver()V

    return-void

    :cond_2b
    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_fb

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-nez p0, :cond_43

    goto/16 :goto_fb

    :cond_43
    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_50

    return-void

    :cond_50
    const-string v5, "scan_cursor"

    invoke-virtual {v0, v5, v4}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/32 v9, 0xafc8

    add-long/2addr v7, v9

    const/4 v9, 0x0

    :goto_6c
    if-ge v9, v6, :cond_d3

    sget-boolean v10, Lcom/shabakaty/cinemana/local/LocalRuntime;->scanCancelled:Z

    if-nez v10, :cond_d3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    cmp-long v12, v10, v7

    if-gez v12, :cond_d3

    add-int v10, v4, v9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    rem-int/2addr v10, v11

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    :try_start_87
    iget-object v11, v10, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-static {v11}, Lcom/shabakaty/cinemana/local/LocalRuntime;->episodes(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-nez v12, :cond_94

    goto :goto_d0

    :cond_94
    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/local/LocalRuntime;->episodeItems(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v11

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    iget-object v12, v10, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v12, v11}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->reconcile(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "subscription_checked id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-static {v12}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " baseline="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->baselineSize(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_c9} :catch_ca

    goto :goto_d0

    :catch_ca
    move-exception v10

    const-string v11, "episode_fetch"

    invoke-static {v11, v10}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d0
    add-int/lit8 v9, v9, 0x1

    goto :goto_6c

    :cond_d3
    add-int/2addr v4, v9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "scan_complete checked="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->deliver()V

    :cond_fb
    :goto_fb
    return-void
.end method

.method static schedule()V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x67e9

    const/4 v5, 0x1

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    if-ne v3, v4, :cond_13

    const/4 v2, 0x1

    goto :goto_13

    :cond_2a
    if-nez v2, :cond_57

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-class v6, Lcom/shabakaty/cinemana/local/LocalEpisodeJob;

    invoke-direct {v2, v3, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v4, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v1, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const-wide/32 v2, 0x1499700

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    goto :goto_57

    :catch_51
    move-exception v0

    const-string v1, "schedule"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    return-void
.end method

.method static settings()Ljava/lang/String;
    .locals 7

    const-string v0, "0"

    :try_start_2
    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v2, "local_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "parentalLevelStatus"

    const-string v4, "parental"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "parentalControl"

    new-instance v4, Lorg/json/JSONArray;

    const-string v5, "[{\"id\":\"0\",\"name\":\"\u0627\u0644\u0627\u0641\u062a\u0631\u0627\u0636\u064a\"},{\"id\":\"1\",\"name\":\"\u0627\u0644\u0643\u0644\"},{\"id\":\"2\",\"name\":\"\u0644\u0644\u0639\u0627\u0626\u0644\u0629\"},{\"id\":\"3\",\"name\":\"\u0644\u0644\u0623\u0637\u0641\u0627\u0644\"}]"

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "userTranslation"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "name"

    const-string v6, "\u0639\u0631\u0636 \u0627\u0644\u0623\u0639\u0645\u0627\u0644 \u0628\u062f\u0648\u0646 \u062a\u0631\u062c\u0645\u0629"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "status"

    const-string v6, "translation"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_55

    return-object v0

    :catch_55
    const-string v0, "{}"

    return-object v0
.end method

.method static sharedDirectory()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Cinemana/work/data/local-account"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static snapshotLegacy(Z)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v1, "ar_title"

    const-string v2, "kind"

    const-string v3, "nb"

    const-string v4, "\u0639\u0645\u0644 "

    const-string v5, "en_title"

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v6

    new-instance v7, Ljava/util/EnumMap;

    const-class v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-direct {v7, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v0

    array-length v8, v0

    const/4 v10, 0x0

    :goto_1b
    if-ge v10, v8, :cond_2a

    aget-object v11, v0, v10

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    :cond_2a
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_33
    const-string v12, "ca1_continue106"

    const-string v13, "1"

    if-ge v11, v10, :cond_2aa

    aget-object v14, v8, v11

    const/4 v15, 0x0

    :try_start_3c
    sget-object v9, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v9, v14}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x1

    invoke-static {v9, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_4b
    .catch Landroid/database/SQLException; {:try_start_3c .. :try_end_4b} :catch_28c
    .catchall {:try_start_3c .. :try_end_4b} :catchall_285

    :try_start_4b
    const-string v14, "SELECT * FROM video_status"

    invoke-virtual {v9, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_51
    .catch Landroid/database/SQLException; {:try_start_4b .. :try_end_51} :catch_278
    .catchall {:try_start_4b .. :try_end_51} :catchall_275

    :cond_51
    :goto_51
    :try_start_51
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1e8

    const-string v0, "videoId"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    const-string v15, "[A-Za-z0-9_-]{1,100}"

    invoke-virtual {v0, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6c

    goto :goto_51

    :cond_6c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_7b
    .catchall {:try_start_51 .. :try_end_7b} :catchall_265

    move-object/from16 v24, v8

    :try_start_7d
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v15, "SELECT nb,arTitle,enTitle,kind,rootSeries,season,episodeNummer,imgObjUrl,imgThumbObjUrl,imgMediumThumbObjUrl FROM video_model WHERE nb=?"
    :try_end_90
    .catchall {:try_start_7d .. :try_end_90} :catchall_1df

    move/from16 v25, v10

    :try_start_92
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v15, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_1d6

    :try_start_9a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_1cb

    if-eqz v15, :cond_116

    const/16 v15, 0xa

    move-object/from16 v26, v6

    :try_start_a4
    new-array v6, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v3, v6, v16

    const/16 v17, 0x1

    aput-object v1, v6, v17

    const/16 v18, 0x2

    aput-object v5, v6, v18

    const/16 v18, 0x3

    aput-object v2, v6, v18

    const-string v18, "rootSeries"

    const/16 v19, 0x4

    aput-object v18, v6, v19

    const-string v18, "season"

    const/16 v19, 0x5

    aput-object v18, v6, v19

    const-string v18, "episodeNummer"

    const/16 v19, 0x6

    aput-object v18, v6, v19

    const-string v18, "imgObjUrl"

    const/16 v19, 0x7

    aput-object v18, v6, v19

    const-string v18, "imgThumbObjUrl"

    const/16 v19, 0x8

    aput-object v18, v6, v19

    const-string v18, "imgMediumThumbObjUrl"

    const/16 v19, 0x9

    aput-object v18, v6, v19
    :try_end_da
    .catchall {:try_start_a4 .. :try_end_da} :catchall_10f

    move-object/from16 v27, v2

    const/4 v2, 0x0

    :goto_dd
    if-ge v2, v15, :cond_fc

    :try_start_df
    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_f1

    aget-object v15, v6, v2
    :try_end_e7
    .catchall {:try_start_df .. :try_end_e7} :catchall_fa

    move-object/from16 v28, v3

    :try_start_e9
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f3

    :cond_f1
    move-object/from16 v28, v3

    :goto_f3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v28

    const/16 v15, 0xa

    goto :goto_dd

    :catchall_fa
    move-exception v0

    goto :goto_112

    :cond_fc
    move-object/from16 v28, v3

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11c

    invoke-virtual {v8, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10b
    .catchall {:try_start_e9 .. :try_end_10b} :catchall_10c

    goto :goto_11c

    :catchall_10c
    move-exception v0

    goto/16 :goto_1d2

    :catchall_10f
    move-exception v0

    move-object/from16 v27, v2

    :goto_112
    move-object/from16 v28, v3

    goto/16 :goto_1d2

    :cond_116
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v26, v6

    :cond_11c
    :goto_11c
    :try_start_11c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/Metadata269;->local(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/shabakaty/cinemana/local/Metadata269;->merge(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/local/Metadata269;->title(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v3, "videoProgress"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    new-instance v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v18, v3

    move-object/from16 v19, v0

    move-wide/from16 v21, v29

    invoke-direct/range {v18 .. v23}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const-wide/16 v18, 0x0

    cmp-long v2, v29, v18

    if-lez v2, :cond_171

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v2, v12, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_171

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_171
    if-eqz p0, :cond_1bc

    const-string v0, "favorite"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_18a

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18a
    const-string v0, "watched"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1a1

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a1
    const-string v0, "watchLater"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1bc
    move-object/from16 v8, v24

    move/from16 v10, v25

    move-object/from16 v6, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    goto/16 :goto_51

    :catchall_1c8
    move-exception v0

    goto/16 :goto_270

    :catchall_1cb
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v26, v6

    :goto_1d2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_1d6
    .catchall {:try_start_11c .. :try_end_1d6} :catchall_1c8

    :catchall_1d6
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v26, v6

    goto/16 :goto_270

    :catchall_1df
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v26, v6

    goto/16 :goto_26e

    :cond_1e8
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v26, v6

    move-object/from16 v24, v8

    move/from16 v25, v10

    :try_start_1f2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const-string v0, "SELECT * FROM settings WHERE userId=?"
    :try_end_1f7
    .catch Landroid/database/SQLException; {:try_start_1f2 .. :try_end_1f7} :catch_260
    .catchall {:try_start_1f2 .. :try_end_1f7} :catchall_275

    const/4 v2, 0x1

    :try_start_1f8
    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "local"

    const/4 v8, 0x0

    aput-object v6, v3, v8

    invoke-virtual {v9, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_203
    .catch Landroid/database/SQLException; {:try_start_1f8 .. :try_end_203} :catch_261
    .catchall {:try_start_1f8 .. :try_end_203} :catchall_275

    :try_start_203
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_251

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v6, 0x0

    :goto_20f
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    if-ge v6, v8, :cond_235

    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_232

    const-string v8, "userId"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_232

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_232
    add-int/lit8 v6, v6, 0x1

    goto :goto_20f

    :cond_235
    sget-object v6, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v8, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    const-string v18, "settings"

    const-string v19, ""

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    const-wide/16 v20, 0x0

    move-object/from16 v17, v8

    invoke-direct/range {v17 .. v22}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_251
    .catchall {:try_start_203 .. :try_end_251} :catchall_25b

    :cond_251
    :try_start_251
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_254
    .catch Landroid/database/SQLException; {:try_start_251 .. :try_end_254} :catch_261
    .catchall {:try_start_251 .. :try_end_254} :catchall_275

    if-eqz v9, :cond_259

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_259
    const/4 v0, 0x1

    goto :goto_29c

    :catchall_25b
    move-exception v0

    :try_start_25c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_260
    const/4 v2, 0x1

    :catch_261
    nop

    move-object v15, v9

    const/4 v0, 0x1

    goto :goto_297

    :catchall_265
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v26, v6

    move-object/from16 v24, v8

    :goto_26e
    move/from16 v25, v10

    :goto_270
    const/4 v2, 0x1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_275
    .catch Landroid/database/SQLException; {:try_start_25c .. :try_end_275} :catch_261
    .catchall {:try_start_25c .. :try_end_275} :catchall_275

    :catchall_275
    move-exception v0

    move-object v15, v9

    goto :goto_286

    :catch_278
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v26, v6

    move-object/from16 v24, v8

    move/from16 v25, v10

    nop

    move-object v15, v9

    goto :goto_297

    :catchall_285
    move-exception v0

    :goto_286
    if-eqz v15, :cond_28b

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_28b
    throw v0

    :catch_28c
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v26, v6

    move-object/from16 v24, v8

    move/from16 v25, v10

    nop

    :goto_297
    if-eqz v15, :cond_29c

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_29c
    :goto_29c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v24

    move/from16 v10, v25

    move-object/from16 v6, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    goto/16 :goto_33

    :cond_2aa
    move-object/from16 v26, v6

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2eb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v4, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/shabakaty/cinemana/local/BackupState;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2c5

    :cond_2eb
    if-eqz v0, :cond_2fd

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v3, v26

    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->replace(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/util/List;)V

    goto :goto_2ff

    :cond_2fd
    move-object/from16 v3, v26

    :goto_2ff
    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->replace(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/util/List;)V

    invoke-virtual {v3, v7}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->merge(Ljava/util/Map;)V

    if-eqz p0, :cond_318

    if-eqz v0, :cond_318

    const-string v0, "legacy_seeded"

    invoke-virtual {v3, v0, v13}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    :cond_318
    const-string v0, "legacy_snapshot_complete"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void
.end method

.method static snapshotPreferences()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const-string v3, "settings"

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    const-string v1, "ca1_continue106"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v5, v4}, Lcom/shabakaty/cinemana/local/BackupState;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_31

    :cond_4f
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v1

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v1, v3, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->replace(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/util/List;)V

    sput-boolean v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->stateDirty:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->lastStateSnapshot:J

    return-void
.end method

.method public static stateChanged()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->stateDirty:Z

    return-void
.end method

.method static updateProfile()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "avatar-"

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->avatar()[B

    move-result-object v1

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->directory()Ljava/io/File;

    move-result-object v2

    array-length v3, v1

    const/4 v4, 0x0

    if-lez v3, :cond_9b

    :try_start_12
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/local/LocalRuntime;->hex([B)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5c

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_47} :catch_94

    :try_start_47
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_4b} :catch_94

    :try_start_4b
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_51} :catch_52
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4b .. :try_end_51} :catch_94

    goto :goto_5c

    :catch_52
    move-exception v1

    goto :goto_56

    :catch_54
    move-exception v1

    const/4 v3, 0x0

    :goto_56
    if-eqz v3, :cond_5b

    :try_start_58
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_5b
    throw v1

    :cond_5c
    :goto_5c
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_9d

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6c
    if-ge v3, v2, :cond_9d

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "avatar.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_88

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "avatar-[0-9a-f]+\\.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_91

    :cond_88
    invoke-virtual {v6, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_91

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_91
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_58 .. :try_end_91} :catch_94

    :cond_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    :catch_94
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_9b
    const-string v0, ""

    :cond_9d
    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v2, "local_profile"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "avatar"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static watchedChanged(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sput-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->api:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/shabakaty/downloader/k9;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalRuntime$4;

    invoke-direct {v2, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime$4;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
