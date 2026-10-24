.class public final Lcom/shabakaty/cinemana/ca1/Recovery92;
.super Ljava/lang/Object;
.source "Recovery92.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoMissing(Ljava/lang/String;)V
    .locals 2

    const-string v0, "resync_missing_preserved"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static declared-synchronized deleted(Ljava/lang/String;)V
    .locals 8

    const-class v0, Lcom/shabakaty/cinemana/ca1/Recovery92;

    monitor-enter v0

    .line 7
    if-nez p0, :cond_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->deleted(Ljava/lang/String;)V

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Ui7;->app:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Ui7;->app:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/ca1/Fresh121;->deleted(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ca1_delete_intent"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.shabakaty."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Recovery92"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x2bc

    if-le v5, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const-string v2, "metadata_delete_requested"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p0, v1}, Lcom/shabakaty/cinemana/ca1/Recovery92;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StorageMigration151;->pruneSoon()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StorageMaintenance152;->scanSoon()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v1, "metadata_delete_audit_failed"

    const-string v2, "preferences"

    invoke-static {v1, p0, v2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 7
    :catchall_1
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method static eligible(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Recovery92;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "s"

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/Recovery92;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "downloadTaskId"

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->number(Ljava/lang/Object;)J

    move-result-wide v1

    const-string p2, "r"

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->number(Ljava/lang/Object;)J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    goto/16 :goto_3

    .line 10
    :cond_0
    const-string p2, "z"

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of v1, p2, Ljava/lang/Enum;

    if-eqz v1, :cond_7

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v1, "COMPLETED"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    const-string p2, "x"

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "path"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Recovery92;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p2, :cond_6

    if-eqz p0, :cond_6

    const-string v1, ".mp4"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "y"

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->number(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Recovery92;->number(Ljava/lang/Object;)J

    move-result-wide p1

    cmp-long v4, v2, p1

    if-eqz v4, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isAbsolute()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 12
    :cond_5
    :goto_0
    return v0

    .line 11
    :cond_6
    :goto_1
    return v0

    .line 10
    :cond_7
    :goto_2
    return v0

    .line 9
    :cond_8
    :goto_3
    return v0
.end method

.method static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " reason="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static varargs mkv(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    const-string v0, "com.shabakaty.cinemana.features.MkvExporter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static number(Ljava/lang/Object;)J
    .locals 2

    .line 5
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static declared-synchronized read(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    const-class v0, Lcom/shabakaty/cinemana/ca1/Recovery92;

    monitor-enter v0

    .line 16
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "readCombinedById"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p3, v5, v7

    invoke-static {v2, v4, v5}, Lcom/shabakaty/cinemana/ca1/Recovery92;->mkv(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    .line 17
    :cond_0
    if-eqz p0, :cond_5

    :try_start_1
    const-string v2, "ca1_delete_intent"

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 18
    :cond_1
    const-string v2, "getDownloadsDao"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v6

    aput-object p0, v5, v7

    invoke-static {v2, v4, v5}, Lcom/shabakaty/cinemana/ca1/Recovery92;->mkv(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 19
    const-string v2, "readDownloadsByTaskId"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v6

    const-string p0, "downloadTaskId"

    invoke-static {p2, p0}, Lcom/shabakaty/cinemana/ca1/Recovery92;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Recovery92;->number(Ljava/lang/Object;)J

    move-result-wide v8

    long-to-int p0, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v7

    invoke-static {v2, v4, v5}, Lcom/shabakaty/cinemana/ca1/Recovery92;->mkv(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 20
    invoke-static {p2, p0, p3}, Lcom/shabakaty/cinemana/ca1/Recovery92;->eligible(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "metadata_recovery_denied"

    const-string p1, "identity/status/path/size mismatch"

    invoke-static {p0, p3, p1}, Lcom/shabakaty/cinemana/ca1/Recovery92;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object v1

    .line 22
    :cond_2
    :try_start_2
    const-string p0, "readCombinedById"

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v7

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p3, v4, v7

    invoke-static {p0, v2, v4}, Lcom/shabakaty/cinemana/ca1/Recovery92;->mkv(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_3

    monitor-exit v0

    return-object p0

    .line 23
    :cond_3
    :try_start_3
    const-string p0, "a"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Recovery92;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "com.shabakaty.cinemana.ca1.Recovery92Insert"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "com.shabakaty.downloader.vt3"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p0, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v8, "i"

    new-array v9, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v5, "f"

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v6

    invoke-virtual {v2, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v2, "n"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {p2, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v2, "j"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {p2, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string p0, "readCombinedById"

    new-array p2, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, p2, v6

    const-class v2, Ljava/lang/String;

    aput-object v2, p2, v7

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p3, v2, v7

    invoke-static {p0, p2, v2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->mkv(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, "metadata_recovered"

    goto :goto_0

    :cond_4
    const-string p1, "metadata_recovery_failed"

    :goto_0
    const-string p2, "verified native completed MP4"

    invoke-static {p1, p3, p2}, Lcom/shabakaty/cinemana/ca1/Recovery92;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return-object p0

    .line 24
    :catchall_0
    move-exception p1

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v2, "j"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    .line 17
    :cond_5
    :goto_1
    const-string p0, "metadata_recovery_denied"

    const-string p1, "delete intent"

    invoke-static {p0, p3, p1}, Lcom/shabakaty/cinemana/ca1/Recovery92;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_1
    move-exception p0

    :try_start_7
    const-string p1, "metadata_recovery_failed"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p3, p0}, Lcom/shabakaty/cinemana/ca1/Recovery92;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v0

    return-object v1

    .line 15
    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
