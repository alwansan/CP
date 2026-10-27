.class public final Lcom/shabakaty/cinemana/ca1/Dependencies112;
.super Ljava/lang/Object;
.source "Dependencies112.java"


# static fields
.field static final PREF:Ljava/lang/String; = "ca1_dependencies112"

.field static final attempted:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static volatile pendingCount:I

.field static final worker:Ljava/util/concurrent/ExecutorService;

.field static final working:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Dependencies112$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Dependencies112$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Dependencies112;->worker:Ljava/util/concurrent/ExecutorService;

    .line 9
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Dependencies112;->working:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Dependencies112;->attempted:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
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
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static content(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    const-string v0, "com.shabakaty.cinemana.features.DownloadIdentity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "contentToken"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

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
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$recover$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 145
    :try_start_0
    invoke-static {p0, p2, p1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->persistSubtitle(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "dependency_metadata_error112"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$recover$3(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 146
    :try_start_0
    const-string v0, "c"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "dependency_listener_error112"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$scan$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Inputs114;->beginScan()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->recover(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Inputs114;->endScan()V

    sget-object p0, Lcom/shabakaty/cinemana/ca1/Dependencies112;->working:Ljava/util/Set;

    invoke-interface {p0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "dependency_recovery_error112"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Inputs114;->endScan()V

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Dependencies112;->working:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V

    throw p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "dependencies112"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method static load(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    const-string v0, "s"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->prefs()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plan:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getString"

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "nb"

    if-nez v1, :cond_1

    .line 44
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->decode(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p1

    .line 45
    const-string v1, "id"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "token"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->unpack(Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object p1

    .line 47
    goto/16 :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "foreign dependency plan"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_1
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const-string v3, "u"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "b1"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "get"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    const-string v3, "com.shabakaty.cinemana.ca1.BatchDownload"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "b"

    invoke-static {v1, v7, v6}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "await"

    invoke-static {v5, v4, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unwrap"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_4

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 52
    const-string v3, "cinemanaDownloadItem"

    invoke-static {p1, v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "subtitles"

    invoke-static {p1, v4}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "skippableScenes"

    invoke-static {p1, v5}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object v5, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    filled-new-array {v4, p1, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v7, p1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 53
    const-string v3, "wantedQuality"

    invoke-static {p1, v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object p1, v1

    .line 55
    :goto_0
    invoke-static {p1, v2}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->content(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->plan(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    :cond_2
    return-object p1

    .line 55
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "episode or quality token mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "foreign API episode"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static parentFinalized(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "s"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "external"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "x"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "v"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Inputs114;->finalized(Ljava/util/Properties;)Z

    move-result p0

    return p0
.end method

.method static pathBusy(Ljava/io/File;Ljava/util/List;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "x"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "r"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 85
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->active(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->isPaused(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "b"

    invoke-static {p2, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->remote(Ljava/lang/Object;I)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 83
    :cond_1
    goto :goto_0

    .line 87
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static persistSubtitle(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    const-string v0, "com.shabakaty.downloader.nz0"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "h"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    const-string v1, "d"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void

    .line 75
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "native subtitle observer unavailable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static plan(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 18
    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 19
    :cond_0
    :try_start_0
    const-string v0, "getApplicationContext"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 20
    :cond_1
    sput-object p0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const-string p0, "nb"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->content(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "token"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "parcel"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->pack(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->prefs()Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plan:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->encode(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DEPENDENCY_PLAN_SAVED item="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_1

    .line 21
    :cond_3
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception p0

    const-string p1, "dependency_plan_error112"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void

    .line 18
    :cond_4
    :goto_2
    return-void
.end method

.method static prefs()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    const-string v1, "ca1_dependencies112"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static recover(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    const-string v9, "COMPLETED"

    const-string v10, "getDownloadsDao"

    const-string v11, "s"

    const-string v12, "x"

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->wanted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->parentFinalized(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1b

    .line 91
    :cond_0
    invoke-static/range {p0 .. p2}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->load(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    sget-object v15, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    .line 92
    if-nez v14, :cond_1

    return-void

    .line 93
    :cond_1
    invoke-static {v13}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->subtitles(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 94
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->wanted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->parentFinalized(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_18

    .line 95
    :cond_2
    const-string v0, "id"

    invoke-static {v7, v0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v11}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 97
    const-string v0, "readAllDownloads"

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Object;

    filled-new-array {v15, v15}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-static {v1, v12}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_17

    .line 100
    :try_start_1
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    const-string v5, "getAll"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17

    move-object/from16 v17, v6

    :try_start_2
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v7, v8, v2, v3, v0}, Lcom/shabakaty/cinemana/ca1/Inputs114;->selectSub(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_17

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v17, v6

    .line 101
    :goto_1
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_17

    const-string v6, "v"

    if-eqz v5, :cond_4

    :try_start_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v5, v12}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v22, v2

    move-object v2, v7

    move-object v6, v3

    move-object/from16 v3, p2

    move-object/from16 v23, v9

    move v9, v4

    move-object/from16 v4, v22

    move-object v9, v5

    move-object/from16 v24, v10

    const/4 v10, 0x1

    move-object/from16 v5, v19

    move-object/from16 v25, v6

    move-object/from16 p1, v17

    move-object/from16 v6, v20

    move-object/from16 v26, v7

    move-object/from16 v7, v21

    :try_start_5
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/cinemana/ca1/Inputs114;->identity(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v17, p1

    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v3, v25

    move-object/from16 v7, v26

    const/4 v4, 0x0

    goto :goto_2

    .line 149
    :catch_2
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object v4, v11

    move-object/from16 v32, v12

    move-object/from16 v25, v15

    goto/16 :goto_17

    .line 103
    :cond_4
    move-object/from16 v25, v3

    move-object/from16 v26, v7

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 p1, v17

    const/4 v10, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15

    const-string v3, "e"

    const-string v4, "getPath"

    const-string v5, "getId"

    const-string v7, "a"

    const-string v9, "r"

    const-string v10, "m"

    const-string v8, "d"

    move-object/from16 v27, v6

    const-string v6, "name"

    const v28, 0x7f12026b

    move-object/from16 v29, v11

    const-string v11, "file"

    const-string v1, "getString"

    move-object/from16 v30, v9

    const/4 v9, 0x1

    if-ne v2, v9, :cond_5

    const/4 v2, 0x0

    :try_start_6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v1

    move-object/from16 v35, v5

    move-object/from16 v34, v6

    move-object v9, v12

    move-object/from16 v2, v26

    move-object/from16 v12, p1

    move-object v1, v0

    move-object/from16 p1, v3

    move-object/from16 v26, v11

    move-object/from16 v0, v30

    goto/16 :goto_6

    .line 104
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14

    const/4 v9, 0x1

    if-le v2, v9, :cond_c

    .line 105
    move-object/from16 v2, v26

    :try_start_7
    invoke-static {v2, v11}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-object/from16 v26, v11

    move-object/from16 v32, v12

    const/4 v11, 0x2

    :try_start_8
    new-array v12, v11, [Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v11, 0x0

    aput-object v17, v12, v11

    move-object/from16 v33, v0

    const/4 v11, 0x2

    new-array v0, v11, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v34, v6

    const/4 v6, 0x0

    aput-object v11, v0, v6

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v13, v8, v11}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v11, 0x1

    aput-object v6, v0, v11

    aput-object v0, v12, v11

    invoke-static {v15, v1, v12}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 106
    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v9

    move-object/from16 v21, p1

    filled-new-array/range {v17 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14, v10, v0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v6, v5, v12}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    new-instance v12, Ljava/io/File;

    move-object/from16 v17, v1

    move-object/from16 v35, v5

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "getUrl"

    move-object/from16 p1, v3

    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v31, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 109
    new-instance v5, Ljava/io/File;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v9, v32

    :try_start_9
    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 110
    int-to-long v5, v11

    move-object/from16 v18, v0

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v19

    cmp-long v5, v5, v19

    if-nez v5, :cond_7

    if-nez v31, :cond_6

    move-object/from16 v31, v3

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "duplicate native subtitle ID"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_7
    :goto_4
    move-object/from16 v30, v0

    move-object/from16 v32, v9

    move-object/from16 v0, v18

    goto :goto_3

    .line 109
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ambiguous exact native subtitle paths"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_9
    move-object/from16 v0, v30

    move-object/from16 v9, v32

    if-eqz v31, :cond_a

    move-object/from16 v1, v31

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ambiguous exact native subtitle task"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_b
    move-object/from16 v9, v32

    new-instance v0, Ljava/io/IOException;

    const-string v1, "foreign duplicate subtitle composer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 149
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v9, v32

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    goto/16 :goto_16

    :catch_5
    move-exception v0

    move-object v9, v12

    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v32, v9

    goto/16 :goto_16

    .line 104
    :cond_c
    move-object/from16 v17, v1

    move-object/from16 v35, v5

    move-object/from16 v34, v6

    move-object v9, v12

    move-object/from16 v2, v26

    move-object/from16 v0, v30

    move-object/from16 v12, p1

    move-object/from16 p1, v3

    move-object/from16 v26, v11

    const/4 v1, 0x0

    .line 114
    :goto_6
    const-string v11, ""

    const-string v6, "intent:"

    const-string v5, "PAUSED"

    if-eqz v1, :cond_13

    .line 115
    :try_start_a
    new-instance v3, Ljava/io/File;

    invoke-static {v1, v9}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v25

    invoke-static {v3, v4, v14}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->pathBusy(Ljava/io/File;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object v12, v9

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v29

    goto/16 :goto_0

    .line 116
    :cond_d
    new-instance v3, Ljava/io/File;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    move-object/from16 v8, p0

    move-object/from16 v10, v17

    :try_start_b
    invoke-static {v8, v9}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    move-object/from16 v7, v29

    :try_start_c
    invoke-static {v1, v7}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {v1, v9}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v3, v27

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-object/from16 v3, p2

    move-object/from16 v32, v9

    move-object v9, v5

    move-object/from16 v5, v17

    move-object/from16 v25, v15

    move-object v15, v6

    move-object/from16 v6, v18

    move-object/from16 v36, v7

    move-object/from16 v7, v19

    :try_start_d
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/cinemana/ca1/Inputs114;->identity(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 117
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 118
    invoke-static {v14, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->canRetry(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->active(I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_7

    .line 119
    :cond_e
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->journalPrefs()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v11, v3, v4

    invoke-static {v2, v10, v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->legacy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v12, v9, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->wanted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    move-object v1, v8

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v15, v25

    move-object/from16 v12, v32

    move-object/from16 v11, v36

    move-object/from16 v8, p2

    goto/16 :goto_0

    .line 121
    :cond_f
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->attempted:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-gez v1, :cond_10

    move-object v1, v8

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v15, v25

    move-object/from16 v12, v32

    move-object/from16 v11, v36

    move-object/from16 v8, p2

    goto/16 :goto_0

    .line 122
    :cond_10
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->attempted:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "i"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v14, v1, v2}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEPENDENCY114_NATIVE_RESUME subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    move-object v1, v8

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v15, v25

    move-object/from16 v12, v32

    move-object/from16 v11, v36

    move-object/from16 v8, p2

    goto/16 :goto_0

    .line 118
    :cond_11
    :goto_7
    move-object v1, v8

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v15, v25

    move-object/from16 v12, v32

    move-object/from16 v11, v36

    move-object/from16 v8, p2

    goto/16 :goto_0

    .line 116
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "native subtitle dependency mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 149
    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v32, v9

    move-object/from16 v25, v15

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    move-object/from16 v8, p0

    :goto_8
    move-object/from16 v32, v9

    move-object/from16 v25, v15

    move-object/from16 v36, v29

    :goto_9
    move-object/from16 v11, p2

    move-object v1, v8

    :goto_a
    move-object/from16 v9, v23

    move-object/from16 v15, v24

    :goto_b
    move-object/from16 v4, v36

    goto/16 :goto_19

    .line 124
    :cond_13
    move-object/from16 v1, p0

    move-object/from16 v32, v9

    move-object/from16 v0, v17

    move-object/from16 v3, v25

    move-object/from16 v36, v29

    move-object v9, v5

    move-object/from16 v25, v15

    move-object v15, v6

    move-object/from16 v5, v26

    :try_start_e
    invoke-static {v2, v5}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13

    const/4 v6, 0x2

    :try_start_f
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v6, 0x0

    aput-object v17, v1, v6

    move-object/from16 v26, v11

    const/4 v6, 0x2

    new-array v11, v6, [Ljava/lang/Object;

    move-object/from16 v6, v34

    invoke-static {v2, v6}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v27, v15

    const/4 v15, 0x0

    aput-object v6, v11, v15

    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v13, v8, v6}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v11, v8

    aput-object v11, v1, v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_12

    move-object/from16 v6, v25

    :try_start_10
    invoke-static {v6, v0, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v5

    move-object/from16 v19, v1

    move-object/from16 v21, v12

    filled-new-array/range {v17 .. v22}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v14, v10, v8}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 126
    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    move-object/from16 v10, v35

    invoke-static {v7, v10, v11}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    const/4 v11, 0x0

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v7, v4, v15}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 127
    move-object/from16 v11, p1

    invoke-static {v8, v11}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    move-object/from16 v11, p2

    :try_start_11
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 128
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v3, v14}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->pathBusy(Ljava/io/File;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/Queue110;->isPaused(I)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {v14, v10}, Lcom/shabakaty/cinemana/ca1/Restart108;->canRetry(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v1, p0

    move-object/from16 v25, v6

    move-object/from16 v9, v23

    move-object/from16 v15, v24

    move-object/from16 v4, v36

    goto/16 :goto_12

    .line 129
    :cond_14
    const-string v3, "readDownloadsByTaskId"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Object;

    filled-new-array {v6, v6}, [Ljava/lang/Object;

    move-result-object v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    move-object/from16 v15, v24

    :try_start_12
    invoke-static {v15, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v17, 0x0

    aput-object v4, v8, v17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0x1

    aput-object v4, v8, v17

    invoke-static {v3, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    .line 130
    if-eqz v3, :cond_17

    .line 131
    move-object/from16 v4, v36

    :try_start_13
    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 132
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    move-object/from16 v1, p0

    move-object v8, v11

    move-object v10, v15

    move-object/from16 v9, v23

    move-object/from16 v12, v32

    move-object v11, v4

    move-object v15, v6

    goto/16 :goto_0

    .line 133
    :cond_15
    new-instance v8, Ljava/io/File;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    move-object/from16 v25, v6

    move-object/from16 v9, v32

    :try_start_14
    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    move-object/from16 v32, v9

    move-object/from16 v9, v23

    :try_start_15
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, "y"

    invoke-static {v3, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v6, v17, v19

    if-lez v6, :cond_18

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v17

    const-string v6, "y"

    invoke-static {v3, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v19

    cmp-long v6, v17, v19

    if-nez v6, :cond_18

    .line 135
    invoke-static {v2, v3, v13}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->persistSubtitle(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "com.shabakaty.cinemana.features.MkvManifestStore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "markState"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object v8, v11

    move-object v10, v15

    move-object/from16 v15, v25

    move-object/from16 v12, v32

    move-object v11, v4

    goto/16 :goto_0

    .line 149
    :catch_a
    move-exception v0

    move-object/from16 v32, v9

    goto :goto_c

    .line 131
    :cond_16
    move-object/from16 v25, v6

    move-object/from16 v9, v23

    new-instance v0, Ljava/io/IOException;

    const-string v1, "foreign subtitle task"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :catch_b
    move-exception v0

    move-object/from16 v25, v6

    :goto_c
    move-object/from16 v9, v23

    goto/16 :goto_11

    .line 130
    :cond_17
    move-object/from16 v25, v6

    move-object/from16 v9, v23

    move-object/from16 v4, v36

    .line 138
    :cond_18
    sget-object v3, Lcom/shabakaty/cinemana/ca1/Queue110;->live:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/shabakaty/cinemana/ca1/Queue110;->owner(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    if-eqz v3, :cond_19

    move-object/from16 v1, p0

    move-object v8, v11

    move-object v10, v15

    move-object/from16 v15, v25

    move-object/from16 v12, v32

    move-object v11, v4

    goto/16 :goto_0

    .line 142
    :cond_19
    :try_start_16
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->wanted(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->parentFinalized(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto/16 :goto_e

    .line 143
    :cond_1a
    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/Queue110;->isPaused(I)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->journalPrefs()Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v26, v6, v7

    invoke-static {v3, v0, v6}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "|PAUSE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Queue110;->live:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/shabakaty/cinemana/ca1/Queue110;->owner(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object/from16 v1, p0

    goto :goto_d

    .line 144
    :cond_1b
    const-string v0, "com.shabakaty.downloader.tm1"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    new-instance v3, Lcom/shabakaty/cinemana/ca1/Dependencies112$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v13}, Lcom/shabakaty/cinemana/ca1/Dependencies112$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->callback(Ljava/lang/Class;Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;)Ljava/lang/Object;

    move-result-object v2

    .line 146
    new-instance v3, Lcom/shabakaty/cinemana/ca1/Dependencies112$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/shabakaty/cinemana/ca1/Dependencies112$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->callback(Ljava/lang/Class;Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;)Ljava/lang/Object;

    move-result-object v22

    .line 147
    const-string v0, "c"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v5

    move-object/from16 v18, v1

    move-object/from16 v21, v12

    filled-new-array/range {v17 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEPENDENCY_NATIVE_SUBMIT parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    move-object/from16 v1, p0

    :try_start_17
    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " subtitle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    goto :goto_10

    .line 148
    :catch_c
    move-exception v0

    goto :goto_f

    .line 143
    :cond_1c
    move-object/from16 v1, p0

    :goto_d
    move-object v8, v11

    move-object v10, v15

    move-object/from16 v15, v25

    move-object/from16 v12, v32

    move-object v11, v4

    goto/16 :goto_0

    .line 142
    :cond_1d
    :goto_e
    return-void

    .line 148
    :catch_d
    move-exception v0

    move-object/from16 v1, p0

    :goto_f
    :try_start_18
    const-string v2, "dependency_submit_error112"

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_10
    nop

    .line 149
    goto/16 :goto_1a

    :catch_e
    move-exception v0

    :goto_11
    move-object/from16 v1, p0

    goto/16 :goto_19

    :catch_f
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v25, v6

    move-object/from16 v9, v23

    goto/16 :goto_b

    .line 128
    :cond_1e
    move-object/from16 v1, p0

    move-object/from16 v25, v6

    move-object/from16 v9, v23

    move-object/from16 v15, v24

    move-object/from16 v4, v36

    :goto_12
    move-object v8, v11

    move-object v10, v15

    move-object/from16 v15, v25

    move-object/from16 v12, v32

    move-object v11, v4

    goto/16 :goto_0

    .line 127
    :cond_1f
    move-object/from16 v1, p0

    goto :goto_13

    .line 149
    :catch_10
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_14

    .line 127
    :cond_20
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    :goto_13
    move-object/from16 v25, v6

    move-object/from16 v9, v23

    move-object/from16 v15, v24

    move-object/from16 v4, v36

    new-instance v0, Ljava/io/IOException;

    const-string v2, "subtitle factory identity mismatch"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :catch_11
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    :goto_14
    move-object/from16 v25, v6

    goto/16 :goto_a

    :catch_12
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_15

    :catch_13
    move-exception v0

    :goto_15
    move-object/from16 v11, p2

    goto/16 :goto_a

    :catch_14
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v32, v12

    :goto_16
    move-object/from16 v25, v15

    move-object/from16 v9, v23

    move-object/from16 v15, v24

    move-object/from16 v4, v29

    goto :goto_19

    :catch_15
    move-exception v0

    move-object v4, v11

    move-object/from16 v32, v12

    move-object/from16 v25, v15

    move-object/from16 v9, v23

    :goto_17
    move-object/from16 v15, v24

    move-object v11, v8

    goto :goto_19

    .line 95
    :cond_21
    move-object v4, v11

    move-object/from16 v32, v12

    move-object/from16 v25, v15

    move-object v11, v8

    move-object v15, v10

    new-instance v0, Ljava/io/IOException;

    const-string v2, "subtitle has parent identity"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_16

    .line 149
    :catch_16
    move-exception v0

    goto :goto_19

    .line 94
    :cond_22
    :goto_18
    return-void

    .line 149
    :catch_17
    move-exception v0

    move-object v4, v11

    move-object/from16 v32, v12

    move-object/from16 v25, v15

    move-object v11, v8

    move-object v15, v10

    :goto_19
    const-string v2, "dependency_item_error119"

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1a
    move-object v8, v11

    move-object v10, v15

    move-object/from16 v15, v25

    move-object/from16 v12, v32

    move-object v11, v4

    goto/16 :goto_0

    .line 150
    :cond_23
    return-void

    .line 90
    :cond_24
    :goto_1b
    return-void
.end method

.method static scan()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/shabakaty/cinemana/ca1/Dependencies112;->pendingCount:I

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    if-eqz v1, :cond_a

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/shabakaty/cinemana/ca1/Restart108;->populated:Z

    if-eqz v2, :cond_a

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 61
    :cond_0
    const-string v2, "getDownloadsDao"

    filled-new-array {v1, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "h"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    const-string v1, "readAllDownloads"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 63
    :try_start_0
    const-string v3, "x"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->wanted(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 65
    :cond_3
    const-string v4, "s"

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "readCombinedById"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 66
    :cond_4
    const-string v6, "cinemanaDownloadItem"

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    const-string v8, "path"

    invoke-static {v6, v8}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/shabakaty/cinemana/ca1/Restart108;->valid(Ljava/io/File;J)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    const-string v7, "downloadTaskId"

    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v6

    .line 67
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_6

    const-string v8, "r"

    invoke-static {v2, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    goto :goto_0

    .line 68
    :cond_6
    sget v6, Lcom/shabakaty/cinemana/ca1/Dependencies112;->pendingCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/shabakaty/cinemana/ca1/Dependencies112;->pendingCount:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Lcom/shabakaty/cinemana/ca1/Dependencies112;->attempted:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 69
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v6, v9

    const-wide/16 v11, 0x2710

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    :cond_7
    sget-object v9, Lcom/shabakaty/cinemana/ca1/Dependencies112;->working:Ljava/util/Set;

    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto/16 :goto_0

    .line 70
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/shabakaty/cinemana/ca1/Dependencies112;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/shabakaty/cinemana/ca1/Dependencies112$$ExternalSyntheticLambda3;

    invoke-direct {v7, v2, v5, v3, v4}, Lcom/shabakaty/cinemana/ca1/Dependencies112$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "dependency_scan_item_error112"

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 72
    :cond_9
    return-void

    .line 60
    :cond_a
    :goto_1
    return-void
.end method

.method static str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static subtitles(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
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

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "subtitles"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    .line 35
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 36
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "extention"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "vtt"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "https://"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "http://"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_2
    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static unpack(Ljava/util/Properties;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;-><init>()V

    const-string v1, "id"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;

    const-string v1, "parcel"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->parcel:Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->unpack(Lcom/shabakaty/cinemana/ca1/Continue106$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static wanted(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    const-string v0, "s"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 27
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->deleted(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->isPaused(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->journalPrefs()Ljava/lang/Object;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "getString"

    invoke-static {v2, v4, v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    const-string v2, "|PAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 30
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PAUSED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->legacy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v4, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->wanted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 31
    :cond_2
    const-string v0, "x"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".mkv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 27
    :cond_3
    :goto_0
    return v3
.end method
