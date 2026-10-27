.class public final Lcom/shabakaty/cinemana/ca1/MkvCancel262;
.super Ljava/lang/Object;
.source "MkvCancel262.java"


# static fields
.field private static final current:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final processes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Process;",
            ">;"
        }
    .end annotation
.end field

.field private static final workers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->processes:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->workers:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->current:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMkvPaths(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_24

    const/4 p1, 0x0

    goto :goto_28

    :cond_24
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    :goto_28
    if-eqz p1, :cond_6b

    array-length v1, p1

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_6b

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".cnm115-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".part"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_6b
    return-void
.end method

.method public static augmentPaths(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_9

    :cond_1e
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ".mkv"

    if-eqz v2, :cond_99

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".temp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->addMkvPaths(Ljava/util/Collection;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(No Sub) "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->addMkvPaths(Ljava/util/Collection;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_99
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->addMkvPaths(Ljava/util/Collection;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_aa
    return-void
.end method

.method public static blocked(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p0, Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    if-nez p1, :cond_8

    goto :goto_1a

    :cond_8
    :try_start_8
    check-cast p0, Landroid/content/Context;

    const-string v0, "ca1_delete_intent"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    :cond_1a
    :goto_1a
    return v1
.end method

.method public static check(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->blocked(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Fresh121;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->current:Ljava/lang/ThreadLocal;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object p0, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->workers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_25
    new-instance p0, Ljava/io/IOException;

    const-string p1, "MKV task cancelled by user"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkCurrent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->check(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing MKV request ownership"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearCurrent()V
    .locals 3

    sget-object v0, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_1a

    :try_start_a
    sget-object v1, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->workers:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1a

    :catch_1a
    :cond_1a
    sget-object v0, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method static id(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static prepareDelete(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "getDownloadsDao"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v4, 0x1

    aput-object p0, v2, v4

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "readCombinedById"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object p1, v5, v4

    invoke-static {v2, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cinemanaDownloadItem"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_162

    const-string v2, "downloadTaskId"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v2, v5

    const-string v5, "ca1_delete_intent"

    invoke-virtual {p0, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, p1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_15a

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Fresh121;->deleted(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_6e

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->active(I)Z

    move-result v5

    if-eqz v5, :cond_6e

    const-string v5, "com.liulishuo.filedownloader.FileDownloader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getImpl"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "pause"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v3

    invoke-static {v5, v6, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    const-string v5, "com.shabakaty.cinemana.features.MkvExporter"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "JOB_LOCK"

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "ACTIVE_JOB_KEYS"

    invoke-static {v5, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string v8, "JOB_EXECUTOR"

    invoke-static {v5, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "item:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    monitor-enter v6

    :try_start_97
    instance-of v9, v5, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v9, :cond_dd

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_aa
    :goto_aa
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_dd

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Runnable;

    const-string v11, ""
    :try_end_b8
    .catchall {:try_start_97 .. :try_end_b8} :catchall_157

    :try_start_b8
    const-string v12, "val$jobKey"

    invoke-static {v10, v12}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c2} :catch_c3
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_157

    goto :goto_cd

    :catch_c3
    :try_start_c3
    const-string v12, "key"

    invoke-static {v10, v12}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_cd} :catch_cd
    .catchall {:try_start_c3 .. :try_end_cd} :catchall_157

    :catch_cd
    :goto_cd
    :try_start_cd
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_aa

    invoke-virtual {v5, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v10

    if-eqz v10, :cond_aa

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_aa

    :cond_dd
    monitor-exit v6
    :try_end_de
    .catchall {:try_start_cd .. :try_end_de} :catchall_157

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0xf

    invoke-virtual {v5, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    add-long/2addr v9, v11

    :goto_eb
    sget-object v5, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->processes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Process;

    if-eqz v5, :cond_f8

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_f8
    monitor-enter v6

    :try_start_f9
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    monitor-exit v6
    :try_end_fe
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_154

    if-eqz v2, :cond_108

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->active(I)Z

    move-result v11

    if-eqz v11, :cond_108

    const/4 v11, 0x1

    goto :goto_109

    :cond_108
    const/4 v11, 0x0

    :goto_109
    sget-object v12, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->workers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Thread;

    if-eqz v12, :cond_11b

    invoke-virtual {v12}, Ljava/lang/Thread;->isAlive()Z

    move-result v12

    if-eqz v12, :cond_11b

    const/4 v12, 0x1

    goto :goto_11c

    :cond_11b
    const/4 v12, 0x0

    :goto_11c
    if-nez v5, :cond_13e

    if-nez v11, :cond_13e

    if-nez v12, :cond_13e

    const-string p1, "com.shabakaty.cinemana.features.MkvStateStore"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "setBusy"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object v0, v5, v4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p0, v5, v1

    const-string p0, "CANCELLED"

    const/4 v0, 0x3

    aput-object p0, v5, v0

    invoke-static {p1, v2, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_13e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    cmp-long v5, v11, v9

    if-gez v5, :cond_14c

    const-wide/16 v11, 0x32

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_eb

    :cond_14c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "MKV cancellation is pending; media retained for a safe retry"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_154
    move-exception p0

    :try_start_155
    monitor-exit v6
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    throw p0

    :catchall_157
    move-exception p0

    :try_start_158
    monitor-exit v6
    :try_end_159
    .catchall {:try_start_158 .. :try_end_159} :catchall_157

    throw p0

    :cond_15a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to persist delete intent"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_162
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Download item disappeared before cancellation"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing deletion identity"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static register(Ljava/lang/Process;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->processes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_16
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->checkCurrent()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    sget-object v2, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->processes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v1

    :cond_24
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Missing MKV process ownership"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unregister(Ljava/lang/Process;)V
    .locals 3

    sget-object v0, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->processes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_a

    sget-object v2, Lcom/shabakaty/cinemana/ca1/MkvCancel262;->processes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_a

    :cond_26
    return-void
.end method
