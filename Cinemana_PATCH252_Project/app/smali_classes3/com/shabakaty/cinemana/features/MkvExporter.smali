.class public final Lcom/shabakaty/cinemana/features/MkvExporter;
.super Ljava/lang/Object;
.source "MkvExporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;
    }
.end annotation


# static fields
.field private static final ACTIVE_JOB_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FFMPEG_ASSET:Ljava/lang/String; = "ffmpeg"

.field private static final FFMPEG_NATIVE_NAME:Ljava/lang/String; = "libffmpeg.so"

.field private static final FFMPEG_SLOTS:Ljava/util/concurrent/Semaphore;

.field private static final JOB_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final JOB_LOCK:Ljava/lang/Object;

.field private static final JOB_RETRY_DELAY_MS:J = 0xfa0L

.field private static final LOG_DIR:Ljava/lang/String; = "log"

.field private static final MAX_CONCURRENT_FFMPEG:I = 0x3

.field private static final MAX_JOB_RETRIES:I = 0x3

.field private static final MAX_MKV_JOBS:I = 0x3

.field private static final MAX_WAIT_MS:J = 0x493e0L

.field private static final POLL_MS:J = 0x1f4L

.field private static final QUIET_MS:J = 0x7d0L

.field private static final ROOT:Ljava/lang/String; = "Cinemana/work"

.field private static final TAG:Ljava/lang/String; = "CNM_MKV"

.field private static final TARGET_LOCKS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZERO_SUBTITLE_GRACE_MS:J = 0x2710L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcom/shabakaty/cinemana/features/MkvExporter$1;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/features/MkvExporter$1;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->JOB_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 71
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->FFMPEG_SLOTS:Ljava/util/concurrent/Semaphore;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->ACTIVE_JOB_KEYS:Ljava/util/Set;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->TARGET_LOCKS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->JOB_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-static/range {p0 .. p5}, Lcom/shabakaty/cinemana/features/MkvExporter;->waitForCompletedVideoAndExport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shabakaty/cinemana/features/MkvExporter;->locateVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .line 43
    sget-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->JOB_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Set;
    .locals 1

    .line 43
    sget-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->ACTIVE_JOB_KEYS:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/Object;)Ljava/io/File;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->locateReadyVideo(Landroid/content/Context;Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Log94;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1677
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvExporter;->ensureLogDir()Ljava/io/File;

    move-result-object p0

    .line 1678
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->migrateLegacyLogs(Ljava/io/File;)V

    .line 1679
    new-instance v0, Ljava/io/File;

    const-string v1, ".mkv_export.log"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1682
    goto :goto_0

    .line 1680
    :catchall_0
    move-exception p0

    .line 1681
    const-string p0, "CNM_MKV"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :goto_0
    return-void
.end method

.method private static appendLog(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Log94;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1686
    :cond_0
    if-nez p1, :cond_1

    .line 1688
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    goto :goto_0

    .line 1689
    :catchall_0
    move-exception p0

    .line 1690
    return-void

    .line 1693
    :cond_1
    :goto_0
    new-instance p0, Ljava/io/File;

    const-string v0, ".mkv_export.log"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 1694
    return-void
.end method

.method private static appendLog(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Log94;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1698
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1699
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1700
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    goto :goto_0

    .line 1701
    :catchall_0
    move-exception p0

    .line 1702
    const-string p0, "CNM_MKV"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :goto_0
    return-void
.end method

.method private static baseTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1446
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildExpectedBase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 783
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 784
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->sanitizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 785
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeNumberText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 786
    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeNumberText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 789
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->pad2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 790
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " S"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->pad2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " E"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->pad2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 792
    :cond_2
    return-object p0
.end method

.method private static buildJobKey(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 151
    const-string v0, "id"

    const-string v1, "getId"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "item:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    const-string v0, "downloadTaskId"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->integerProperty(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result p0

    .line 154
    if-ltz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "task:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p3}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "media:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, "|s="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "|e="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 159
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "path:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p4}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static callDownloadsUpdate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1206
    const-string v0, "com.shabakaty.downloader.lz0"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1207
    const-string v1, "com.shabakaty.downloader.pw0"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1208
    const-string v2, "com.shabakaty.downloader.lz0$m"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1209
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1210
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1472
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1473
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1474
    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 1477
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1479
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1480
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 1481
    nop

    .line 1482
    return-void

    .line 1479
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1480
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 1481
    throw p1
.end method

.method private static deletePromotionLogs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1412
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvExporter;->ensureLogDir()Ljava/io/File;

    move-result-object p0

    .line 1413
    new-instance v0, Ljava/io/File;

    const-string v1, ".mkv_export.log"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1415
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1417
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1419
    :catchall_0
    move-exception p0

    :cond_1
    :goto_0
    nop

    .line 1420
    return-void
.end method

.method private static digitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 753
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 754
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x30

    if-ge v2, v3, :cond_2

    .line 756
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 757
    if-lt v3, v4, :cond_1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 755
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 759
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v2, 0x1

    if-le p0, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    if-ne p0, v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 760
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static emptyCoroutineContext()Ljava/lang/Object;
    .locals 3

    .line 1396
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.coroutines.EmptyCoroutineContext"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1397
    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1398
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1399
    :catchall_0
    move-exception v1

    .line 1400
    return-object v0
.end method

.method private static ensureFfmpeg(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 611
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "libffmpeg.so"

    const-wide/16 v3, 0x400

    if-eqz v1, :cond_0

    .line 612
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ffmpeg=native:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 615
    return-object v1

    .line 621
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "cinemana_tools"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v6, "bin"

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v6

    .line 623
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-gez v0, :cond_4

    .line 625
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "ffmpeg"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 626
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 627
    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 630
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v0, v2, v5, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 632
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 633
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 634
    nop

    .line 636
    :cond_4
    const/4 p0, 0x1

    invoke-virtual {v1, p0, p0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 637
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ffmpeg=private:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " canExecute="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 638
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p0

    cmp-long p0, p0, v3

    if-lez p0, :cond_5

    move-object v6, v1

    :cond_5
    return-object v6

    .line 632
    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 633
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 634
    throw p1
.end method

.method private static ensureLogDir()Ljava/io/File;
    .locals 3

    .line 1645
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Cinemana/work"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1646
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1647
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1649
    :cond_1
    return-object v1
.end method

.method private static exactVideoCandidate(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 730
    const/4 p2, 0x0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 732
    invoke-static {p3}, Lcom/shabakaty/cinemana/features/MkvExporter;->isVideoCandidate(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p3

    .line 733
    :cond_1
    return-object p2

    .line 730
    :cond_2
    :goto_0
    return-object p2
.end method

.method private static export(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/io/File;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shabakaty/cinemana/ca1/Lease115;->export(Ljava/lang/Object;Ljava/io/File;Ljava/util/List;Ljava/io/File;Ljava/lang/Object;)V

    return-void
.end method

.method private static exportLocked(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/io/File;Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "MKV_FFMPEG_SLOT_RELEASED target="

    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->isNoSubPath(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Lcom/shabakaty/cinemana/features/MkvExporter;->hasNoSubPrefix(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(No Sub) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mkv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".bak"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const-wide/16 v10, 0x400

    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v7, v7, v10

    if-lez v7, :cond_1

    .line 369
    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 370
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STALE_BACKUP_RECOVERY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 372
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-lez v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 373
    :goto_0
    const-string v12, " size="

    if-eqz v0, :cond_3

    .line 374
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "existing MKV detected; rebuilding and replacing it: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    :cond_3
    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->ensureFfmpeg(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 378
    if-eqz v13, :cond_2d

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    goto/16 :goto_14

    .line 383
    :cond_4
    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Lease115;->stage(Ljava/io/File;)Ljava/io/File;

    move-result-object v14

    .line 384
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 386
    :cond_5

    # Persist recovery data beside the download; do not remux or inject JSON into the MP4.
    move-object v16, v12
    move-object v15, v13
    move-object/from16 v8, p0
    move-object/from16 v9, p1
    move-object/from16 v10, p2
    move-object/from16 v11, p4
    move-object v12, v13
    move-object v13, v6
    invoke-static/range {v8 .. v13}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->prepare(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    move-object v12, v16
    move-object v13, v15

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v11, "-nostdin"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v11, "-hide_banner"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v11, "-loglevel"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v11, "error"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v11, "-y"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    const-string v11, "-i"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/File;

    .line 399
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    goto :goto_1

    .line 403
    :cond_6
    const-string v11, "-map"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    const-string v13, "0:v:0"

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    const-string v13, "0:a?"

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    const/4 v13, 0x0

    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_7

    .line 408
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v8, ":0"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    goto :goto_2

    .line 412
    :cond_7
    const-string v8, "-c:v"

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    const-string v8, "copy"

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    const-string v11, "-c:a"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    const-string v11, "-c:s"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    const/4 v8, 0x0

    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    const-string v13, "title="

    if-ge v8, v11, :cond_9

    .line 420
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shabakaty/cinemana/features/MkvExporter;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 421
    const-string v15, "vtt"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 424
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-c:s:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    const-string v11, "srt"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-metadata:s:s:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/shabakaty/cinemana/features/DownloadTitle127;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "language="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->languageFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 433
    :cond_9
    const-string v8, "-metadata"

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shabakaty/cinemana/features/MkvExporter;->baseTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shabakaty/cinemana/features/DownloadTitle127;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    const-string v8, "-map_chapters"

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    const-string v8, "0"

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    const-string v8, "-f"

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    const-string v8, "matroska"

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    const-string v8, "subtitle_track_types=derived_from_real_input_languages (PATCH127)"

    invoke-static {v3, v8}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exec="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v10}, Lcom/shabakaty/cinemana/features/MkvExporter;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 443
    nop

    .line 444
    nop

    .line 446
    const/4 v8, 0x0

    :try_start_0
    sget-object v11, Lcom/shabakaty/cinemana/features/MkvExporter;->FFMPEG_SLOTS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 447
    nop

    .line 448
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MKV_FFMPEG_SLOT_ACQUIRED target="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 449
    new-instance v11, Ljava/lang/ProcessBuilder;

    invoke-direct {v11, v10}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    invoke-virtual {v11, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    .line 450
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 451
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    const/16 v13, 0x2000

    new-array v13, v13, [B

    .line 454
    :goto_4
    invoke-virtual {v10, v13}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lez v15, :cond_b

    .line 455
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v2, 0x2ee0

    if-ge v7, v2, :cond_a

    new-instance v2, Ljava/lang/String;

    const-string v7, "UTF-8"

    const/4 v4, 0x0

    invoke-direct {v2, v13, v4, v15, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v2, p2

    move-object/from16 v4, p4

    const/4 v7, 0x1

    goto :goto_4

    .line 457
    :cond_b
    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 458
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 459
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exit="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " output="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 460
    if-nez v2, :cond_28

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v15, 0x400

    cmp-long v2, v10, v15

    if-gez v2, :cond_c

    goto/16 :goto_10

    .line 469
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 470
    nop

    .line 471
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 472
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 473
    :cond_d
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 474
    const-string v0, "REPLACE_FAILED: could not stage existing MKV"

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 578
    :cond_e
    if-eqz v8, :cond_f

    .line 579
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 581
    :cond_f
    :goto_6
    nop

    .line 582
    sget-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->FFMPEG_SLOTS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 476
    return-void

    .line 478
    :cond_10
    nop

    .line 479
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OLD_MKV_STAGED="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_7

    .line 471
    :cond_11
    move v7, v4

    .line 482
    :goto_7
    invoke-virtual {v14, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 483
    if-nez v0, :cond_13

    .line 485
    :try_start_4
    invoke-static {v14, v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 486
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 487
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v13, 0x400

    cmp-long v0, v9, v13

    if-lez v0, :cond_12

    const/4 v4, 0x1

    .line 491
    :cond_12
    goto :goto_8

    .line 488
    :catchall_1
    move-exception v0

    .line 489
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REPLACE_FAILED: install copy error="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 490
    goto :goto_8

    .line 483
    :cond_13
    move v4, v0

    .line 494
    :goto_8
    if-nez v4, :cond_17

    .line 495
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 496
    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 497
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REPLACE_FAILED: new MKV could not be installed; old MKV restored="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 578
    if-eqz v8, :cond_16

    .line 579
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    .line 581
    :cond_16
    :goto_9
    nop

    .line 582
    sget-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->FFMPEG_SLOTS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 498
    return-void

    .line 501
    :cond_17
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUCCESS="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    move-object/from16 v4, p4

    invoke-static {v1, v4, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->ready(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;)V

    invoke-static {v1, v4, v0, v9, v10}, Lcom/shabakaty/cinemana/features/MkvExporter;->promoteDatabase(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result v0

    const/4 v11, 0x0

    :goto_a
    if-nez v0, :cond_18

    const/4 v15, 0x3

    if-ge v11, v15, :cond_18

    const-wide/16 v13, 0x3e8

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v1, v4, v15, v9, v10}, Lcom/shabakaty/cinemana/features/MkvExporter;->promoteDatabase(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 509
    :cond_18
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DB_PROMOTE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 510
    if-nez v0, :cond_1c

    .line 511
    const-string v0, "PROMOTION_FAILED; rolling back newly generated MKV"

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 513
    :cond_19
    if-eqz v7, :cond_1a

    .line 514
    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OLD_MKV_RESTORED="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 578
    :cond_1a
    if-eqz v8, :cond_1b

    .line 579
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    .line 581
    :cond_1b
    :goto_b
    nop

    .line 582
    sget-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->FFMPEG_SLOTS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 517
    return-void

    .line 520
    :cond_1c
    if-eqz v7, :cond_1d

    :try_start_9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OLD_MKV_DELETE="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 529
    :cond_1d
    invoke-static {v1, v6, v4, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->organizeMkv(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;Ljava/io/File;)Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 530
    nop

    .line 531
    const-string v2, "path"

    if-eqz v0, :cond_22

    :try_start_a
    iget-boolean v7, v0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->moved:Z

    if-eqz v7, :cond_22

    iget-object v7, v0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->finalFile:Ljava/io/File;

    if-eqz v7, :cond_22

    .line 532
    iget-object v7, v0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->finalFile:Ljava/io/File;

    .line 533
    invoke-static {v1, v4, v7, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->promoteDatabaseWithRetry(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    .line 534
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SORT_DB_PROMOTE="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 535
    if-eqz v9, :cond_20

    .line 536
    nop

    .line 537
    iget-object v9, v0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->replacedBackup:Ljava/io/File;

    if-eqz v9, :cond_1e

    iget-object v9, v0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->replacedBackup:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 538
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OLD_SORTED_MKV_DELETE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, v0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->replacedBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 540
    :cond_1e
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 541
    :cond_1f
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    .line 543
    :cond_20
    invoke-static {v7, v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    .line 544
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SORT_DB_ROLLBACK_MOVED_BACK="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 545
    iget-object v9, v0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->replacedBackup:Ljava/io/File;

    if-eqz v9, :cond_21

    iget-object v9, v0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->replacedBackup:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 546
    nop

    .line 547
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_21

    iget-object v0, v0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->replacedBackup:Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 549
    :cond_21
    nop

    .line 550
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v6

    .line 552
    :goto_c
    goto :goto_d

    .line 553
    :cond_22
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v6

    .line 560
    :goto_d
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->hasNoSubPrefix(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v4, v7, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->writeIdentityRecord(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;Z)V

    invoke-static {v1, v4, v7}, Lcom/shabakaty/cinemana/ca1/Commit105;->completed(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    # Re-check the exact organized path and byte count before retiring any source files.
    move-object v10, v1
    move-object v11, v4
    move-object v12, v7
    move-object v13, v3
    invoke-static/range {v10 .. v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->promoteDatabaseWithRetry(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)Z
    move-result v16
    if-eqz v16, :cond_26
    move-object/from16 v10, p1
    invoke-static {v7, v10}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->finalizeMkv(Ljava/io/File;Ljava/io/File;)Z
    move-result v16
    if-eqz v16, :cond_26

    .line 564
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ".mp4"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    const-string v4, " result="

    if-eqz v2, :cond_23

    move-object/from16 v2, p1

    :try_start_b
    invoke-static {v2, v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->sameFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 566
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete video="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->safeDelete(Ljava/io/File;)Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 568
    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {v0, v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->sameFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete mp4 sibling="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->safeDelete(Ljava/io/File;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 571
    :cond_24
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 572
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_25

    .line 573
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete subtitle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->safeDelete(Ljava/io/File;)Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 575
    :cond_25
    goto :goto_e

    .line 576
    :cond_26
    # Sidecar is deleted only when final MKV identity/path is committed and the MP4 source is gone.
    invoke-static {v7, p1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->cleanupCompleted(Ljava/io/File;Ljava/io/File;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MKV_PROMOTED_AS_PRIMARY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-static {v7, v0}, Lcom/shabakaty/cinemana/ca1/StorageMaintenance152;->recordSuccess(Ljava/io/File;Ljava/util/List;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 578
    if-eqz v8, :cond_27

    .line 579
    :try_start_c
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_f

    :catchall_4
    move-exception v0

    .line 581
    :cond_27
    :goto_f
    nop

    .line 582
    sget-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->FFMPEG_SLOTS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 586
    return-void

    .line 461
    :cond_28
    :goto_10
    :try_start_d
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 462
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MKV_BUILD_FAILED; existing primary preserved="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 578
    if-eqz v8, :cond_2a

    .line 579
    :try_start_e
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_11

    :catchall_5
    move-exception v0

    .line 581
    :cond_2a
    :goto_11
    nop

    .line 582
    sget-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->FFMPEG_SLOTS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    return-void

    .line 578
    :catchall_6
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x1

    goto :goto_12

    :catchall_7
    move-exception v0

    const/4 v2, 0x0

    move v7, v2

    move-object v2, v0

    :goto_12
    if-eqz v8, :cond_2b

    .line 579
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_13

    :catchall_8
    move-exception v0

    .line 581
    :cond_2b
    :goto_13
    if-eqz v7, :cond_2c

    .line 582
    sget-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->FFMPEG_SLOTS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 585
    :cond_2c
    throw v2

    .line 379
    :cond_2d
    :goto_14
    const-string v0, "FFMPEG unavailable"

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method private static extension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1449
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1450
    if-gez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static extractSeasonEpisodeDigits(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "(?:^|[^a-z0-9])s([0-9]+)[^a-z0-9]*e([0-9]+)(?:[^0-9]|$)"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findDownloadsRow(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1195
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1196
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->readAllDownloads(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1197
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1198
    const-string v2, "r"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->integerProperty(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v2

    .line 1199
    const-string v3, "s"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1200
    if-ne v2, p1, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 1201
    :cond_1
    goto :goto_0

    .line 1202
    :cond_2
    return-object v0

    .line 1195
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static findSubtitles(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 315
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 316
    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 317
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, p0, v2

    .line 320
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    goto :goto_2

    .line 321
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 322
    const-string v5, ".srt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".ass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".vtt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 325
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    :cond_5
    new-instance p0, Lcom/shabakaty/cinemana/features/MkvExporter$3;

    invoke-direct {p0}, Lcom/shabakaty/cinemana/features/MkvExporter$3;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 332
    return-object v0
.end method

.method private static findTokenMp4InRoot(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mp4"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static firstNonEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1436
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static getDownloadsDao(Landroid/content/Context;Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1164
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1165
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1166
    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    .line 1167
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shabakaty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".downloads.database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB_PROMOTE_DOWNLOADS_DB_NAME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1170
    const-string v1, "com.shabakaty.downloader.data.db.DownloadsDatabase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1171
    const-string v2, "com.shabakaty.downloader.ut3"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1172
    const-class v3, Landroid/content/Context;

    const-class v4, Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "a"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1173
    const/4 v3, 0x0

    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "b"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1175
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1176
    const-string v0, "p"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1177
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB_PROMOTE_DOWNLOADS_DB_CLASS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB_PROMOTE_DOWNLOADS_DAO="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez v0, :cond_1

    const-string v1, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1180
    return-object v0
.end method

.method private static hasNoSubPrefix(Ljava/lang/String;)Z
    .locals 7

    .line 1495
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1496
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1497
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "(No Sub) "

    const/4 v5, 0x0

    const/16 v6, 0x9

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "(No Sub)"

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 1498
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1497
    :cond_2
    return v0
.end method

.method private static integerProperty(Ljava/lang/Object;Ljava/lang/String;I)I
    .locals 0

    .line 1298
    if-nez p0, :cond_0

    return p2

    .line 1299
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->readProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1300
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 1301
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    return p2
.end method

.method private static invokeSuspendAndWait(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1333
    nop

    .line 1334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v3, v1, :cond_3

    aget-object v7, v0, v3

    .line 1335
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-eq v8, v4, :cond_0

    goto :goto_1

    .line 1336
    :cond_0
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 1337
    aget-object v8, v8, v5

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "kotlin.coroutines.Continuation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 1338
    :cond_1
    nop

    .line 1339
    goto :goto_2

    .line 1334
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v7, v6

    .line 1341
    :goto_2
    if-eqz v7, :cond_9

    .line 1343
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1344
    new-array v1, v5, [Ljava/lang/Object;

    .line 1345
    nop

    .line 1346
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v5

    .line 1347
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvExporter;->emptyCoroutineContext()Ljava/lang/Object;

    move-result-object v8

    .line 1349
    nop

    .line 1350
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    new-instance v10, Lcom/shabakaty/cinemana/features/MkvExporter$4;

    invoke-direct {v10, v8, v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter$4;-><init>(Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    .line 1349
    invoke-static {v9, v3, v10}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 1368
    new-array v4, v4, [Ljava/lang/Object;

    .line 1369
    if-eqz p2, :cond_4

    array-length v8, p2

    if-lez v8, :cond_4

    aget-object v6, p2, v2

    :cond_4
    aput-object v6, v4, v2

    .line 1370
    aput-object v3, v4, v5

    .line 1372
    :try_start_0
    invoke-virtual {v7, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1376
    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->isCoroutineSuspended(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_5

    return-object p0

    .line 1382
    :cond_5
    nop

    .line 1384
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1387
    aget-object p0, v1, v2

    return-object p0

    .line 1385
    :cond_6
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Timed out waiting for DAO method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1377
    :catch_0
    move-exception p0

    .line 1378
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 1379
    instance-of p2, p1, Ljava/lang/Exception;

    if-nez p2, :cond_8

    .line 1380
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_7

    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 1381
    :cond_7
    throw p0

    .line 1379
    :cond_8
    check-cast p1, Ljava/lang/Exception;

    throw p1

    .line 1341
    :cond_9
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DAO suspend method not found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isCoroutineSuspended(Ljava/lang/Object;)Z
    .locals 1

    .line 1391
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "kotlin.coroutines.intrinsics.CoroutineSingletons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isVideoCandidate(Ljava/io/File;)Z
    .locals 5

    .line 737
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_1

    .line 738
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 739
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 740
    :cond_1
    const-string v1, ".mkv.part"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".part"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 741
    :cond_2
    const-string v1, ".mp4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".mkv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".webm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 742
    const-string v1, ".mov"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".m4v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".ts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 743
    const-string v1, ".3gp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".avi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 741
    :cond_4
    return v0

    .line 740
    :cond_5
    :goto_0
    return v0

    .line 737
    :cond_6
    :goto_1
    return v0
.end method

.method private static join(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1486
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1488
    :cond_0
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1489
    goto :goto_0

    .line 1490
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static languageFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1464
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1465
    const-string v0, "arabic subtitle for "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ar"

    return-object p0

    .line 1466
    :cond_0
    const-string v0, "english subtitle for "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "en"

    return-object p0

    .line 1467
    :cond_1
    const-string v0, "special subtitle for "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "sp"

    return-object p0

    .line 1468
    :cond_2
    const-string p0, "und"

    return-object p0
.end method

.method private static locateReadyVideo(Landroid/content/Context;Ljava/lang/Object;)Ljava/io/File;
    .locals 5

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->exactVideo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " [cnm-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "Cinemana/work"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->findTokenMp4InRoot(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "Download/Cinemana/work"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->findTokenMp4InRoot(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static locateVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 17

    .line 642
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->resolvePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 643
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->isVideoCandidate(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v0, v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->matchesRequestedEpisode(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 645
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Cinemana/work"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return-object v4

    .line 648
    :cond_1
    invoke-static/range {p2 .. p4}, Lcom/shabakaty/cinemana/features/MkvExporter;->buildExpectedBase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 652
    invoke-static {v2, v3, v0, v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->exactVideoCandidate(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 653
    if-eqz v3, :cond_2

    return-object v3

    .line 655
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 656
    if-nez v2, :cond_3

    return-object v4

    .line 658
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->sanitizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 659
    invoke-static/range {p3 .. p3}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeNumberText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 660
    invoke-static/range {p4 .. p4}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeNumberText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 662
    nop

    .line 663
    nop

    .line 664
    array-length v7, v2

    const/4 v8, 0x0

    move-object v10, v4

    move v9, v8

    move v11, v9

    :goto_0
    const/16 v12, 0x10

    if-ge v9, v7, :cond_a

    aget-object v13, v2, v9

    .line 665
    invoke-static {v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->isVideoCandidate(Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_4

    goto/16 :goto_2

    .line 666
    :cond_4
    invoke-static {v13, v0, v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->matchesRequestedEpisode(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    goto/16 :goto_2

    .line 667
    :cond_5
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 668
    invoke-static {v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 669
    nop

    .line 674
    invoke-static {v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripNoSubPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 675
    invoke-static {v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 680
    invoke-static {v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->titlePartBeforeEpisode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 681
    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 685
    invoke-static {v15}, Lcom/shabakaty/cinemana/features/MkvExporter;->extractSeasonEpisodeDigits(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 686
    invoke-static {v5}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    aget-object v4, v14, v8

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 687
    :cond_6
    const/16 v12, 0xa

    :goto_1
    invoke-static {v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v12, v12, 0x6

    .line 690
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "s"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "e"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v12, v12, 0x3

    .line 692
    :cond_8
    if-le v12, v11, :cond_9

    .line 693
    nop

    .line 694
    move v11, v12

    move-object v10, v13

    .line 664
    :cond_9
    :goto_2
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 699
    :cond_a
    if-eqz v10, :cond_b

    if-lt v11, v12, :cond_b

    return-object v10

    .line 700
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static locateVideoForItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/File;
    .locals 8

    invoke-static {p0, p5}, Lcom/shabakaty/cinemana/features/MkvExporter;->locateReadyVideo(Landroid/content/Context;Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p5, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-eqz v0, :cond_2

    check-cast p5, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-static {p5}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [cnm-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "]"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Cinemana/work"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->isVideoCandidate(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static/range {p0 .. p4}, Lcom/shabakaty/cinemana/features/MkvExporter;->locateVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static longProperty(Ljava/lang/Object;Ljava/lang/String;J)J
    .locals 0

    .line 1291
    if-nez p0, :cond_0

    return-wide p2

    .line 1292
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->readProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1293
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 1294
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    return-wide p2
.end method

.method private static matchesRequestedEpisode(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 715
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 716
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 717
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->extractSeasonEpisodeDigits(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v2, 0x1

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v2

    .line 718
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeNumberText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 719
    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeNumberText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 720
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 721
    :goto_0
    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    .line 722
    :goto_2
    if-eqz v1, :cond_5

    .line 723
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p0, p0, v2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, v2

    :cond_4
    return v0

    .line 726
    :cond_5
    xor-int/lit8 p0, v3, 0x1

    return p0
.end method

.method private static migrateLegacyLogs(Ljava/io/File;)V
    .locals 6

    .line 1654
    if-nez p0, :cond_0

    return-void

    .line 1655
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1656
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 1657
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1658
    if-nez v0, :cond_2

    return-void

    .line 1659
    :cond_2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, v0, v2

    .line 1660
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 1661
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1662
    const-string v5, ".mkv_export.log"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".mkv_player_resolver.log"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "."

    .line 1663
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, ".mkv.log"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1664
    :cond_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1666
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 1668
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1659
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1656
    :cond_7
    :goto_2
    return-void

    .line 1672
    :catchall_0
    move-exception p0

    :cond_8
    nop

    .line 1673
    return-void
.end method

.method private static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    .line 1620
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 1621
    :cond_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->sameFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 1623
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1624
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1625
    :cond_2
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 1626
    :cond_3
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1627
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 1628
    :catchall_0
    move-exception p0

    :cond_4
    nop

    .line 1629
    return v0

    .line 1620
    :cond_5
    :goto_0
    return v0
.end method

.method private static nonEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1438
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static normalizeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1272
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1273
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1275
    nop

    .line 1276
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 1277
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1278
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v6

    .line 1279
    :goto_2
    if-eqz v5, :cond_4

    .line 1280
    if-nez v3, :cond_3

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1281
    :cond_3
    move v3, v6

    goto :goto_3

    .line 1283
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1284
    move v3, v1

    .line 1276
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1287
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static normalizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 809
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 810
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 812
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 813
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 814
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static normalizeNumberText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 820
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 821
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 822
    :goto_0
    const-string v0, "S"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 823
    :cond_1
    return-object p0

    .line 822
    :cond_2
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static onVideoCompleted(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 80
    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move-object v1, p0

    .line 84
    const-string p0, "path"

    const-string p1, "x"

    const-string v0, "getPath"

    filled-new-array {p0, p1, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string p0, "title"

    const-string p1, "getTitle"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    const-string p0, "season"

    const-string p1, "getSeason"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    const-string p0, "episodeNumber"

    const-string p1, "getEpisodeNumber"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onVideoCompleted path="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " title="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " season="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " episode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->locateReadyVideo(Landroid/content/Context;Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mp4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 94
    nop

    .line 95
    invoke-static {p2, v4, v5, v6, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->buildJobKey(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    sget-object p0, Lcom/shabakaty/cinemana/features/MkvExporter;->JOB_LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 98
    :try_start_0
    sget-object p1, Lcom/shabakaty/cinemana/features/MkvExporter;->ACTIVE_JOB_KEYS:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "QUEUE_DUPLICATE_IGNORED key="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    monitor-exit p0

    return-void

    .line 102
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QUEUE_ENQUEUED key="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/4 p0, 0x1

    const-string p1, "QUEUED"

    invoke-static {v1, p2, p0, p1}, Lcom/shabakaty/cinemana/features/MkvStateStore;->setBusy(Landroid/content/Context;Ljava/lang/Object;ZLjava/lang/String;)V

    sget-object p0, Lcom/shabakaty/cinemana/features/MkvExporter;->JOB_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/shabakaty/cinemana/features/MkvExporter$2;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/cinemana/features/MkvExporter$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void

    .line 104
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 80
    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string p0, "RECONCILE_DEFERRED: final MP4 not ready"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized organizeMkv(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;Ljava/io/File;)Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;
    .locals 11

    move-object v10, p2

    .line 1543
    const-string p0, "0"

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto/16 :goto_4

    .line 1545
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Cinemana"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1546
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 1548
    :cond_1
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "title"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "getTitle"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 1549
    invoke-static {p2, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1550
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1548
    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->firstNonEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/shabakaty/cinemana/ca1/WorkFolders104;->name(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->stripMarker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1554
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->hasNoSubPrefix(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripNoSubPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1558
    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->sanitizeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1559
    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "season"

    aput-object v8, v7, v5

    const-string v8, "getSeason"

    aput-object v8, v7, v6

    invoke-static {p2, v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1560
    new-array v2, v2, [Ljava/lang/String;

    const-string v8, "episodeNumber"

    aput-object v8, v2, v5

    const-string v8, "getEpisodeNumber"

    aput-object v8, v2, v6

    invoke-static {p2, v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1564
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->extractSeasonEpisodeDigits(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1565
    if-eqz v2, :cond_2

    aget-object v8, v2, v5

    invoke-static {v8}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v2, v6

    invoke-static {v8}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v2, v5

    .line 1566
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1567
    aget-object v7, v2, v5

    .line 1568
    aget-object p2, v2, v6

    .line 1571
    :cond_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1573
    invoke-static {v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    .line 1574
    nop

    .line 1575
    :try_start_1
    invoke-static {v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move v1, v5

    .line 1576
    :goto_0
    if-lez v1, :cond_3

    .line 1577
    :try_start_2
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Season "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v2

    goto :goto_1

    .line 1579
    :cond_3
    nop

    .line 1581
    :goto_1
    goto :goto_2

    .line 1582
    :cond_4
    nop

    .line 1584
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1585
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SORT_FAILED: could not create "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 1586
    return-object v0

    .line 1589
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->stripMarker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1590
    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->sameFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance p0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;

    invoke-direct {p0, p1, v1, v0, v5}, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    return-object p0

    .line 1592
    :cond_6
    nop

    .line 1593
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1594
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".bak"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1596
    :cond_7
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 1597
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SORT_FAILED: could not stage existing sorted MKV "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 1598
    return-object v0

    .line 1600
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SORT_OLD_STAGED="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    .line 1593
    :cond_9
    move-object v2, v0

    .line 1603
    :goto_3
    invoke-static {v10, p1, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->moving(Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 1604
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1605
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SORT_FAILED: could not move MKV to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 1606
    return-object v0

    .line 1609
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SORTED_MKV="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, " work="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " season="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " episode="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " noSub="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 1612
    new-instance p0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;

    invoke-direct {p0, p1, v1, v2, v6}, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    .line 1613
    :catchall_1
    move-exception p0

    .line 1614
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SORT_EXCEPTION="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    .line 1615
    return-object v0

    .line 1543
    :cond_c
    :goto_4
    return-object v0
.end method

.method private static pad2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 747
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 748
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 749
    :cond_0
    return-object p0
.end method

.method private static declared-synchronized promoteDatabase(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;J)Z
    .locals 45

    .line 900
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "sizeMB"

    const-string v3, "getCinemanaDownloadItem"

    const-string v4, "cinemanaDownloadItem"

    const-string v5, "downloadTaskId"

    const-string v6, "path"

    .line 901
    nop

    .line 902
    nop

    .line 903
    nop

    .line 904
    nop

    .line 905
    nop

    .line 906
    nop

    .line 907
    nop

    .line 908
    nop

    .line 909
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 910
    const-string v8, ""

    if-nez p2, :cond_0

    move-object v9, v8

    goto :goto_0

    :cond_0
    move-object/from16 v9, p2

    .line 911
    :goto_0
    nop

    .line 913
    const/4 v10, 0x0

    const/4 v14, -0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_23

    if-eqz v15, :cond_1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1144
    :catchall_0
    move-exception v0

    move-object v5, v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    goto/16 :goto_29

    .line 913
    :cond_1
    move-object v15, v1

    .line 916
    :goto_1
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "h"

    new-array v13, v10, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 917
    new-array v12, v10, [Ljava/lang/Object;

    invoke-virtual {v11, v15, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_23

    .line 918
    if-nez v11, :cond_2

    .line 919
    :try_start_3
    const-string v0, "DB_PROMOTE_FAIL: downloadDao is null"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 920
    return v10

    .line 1144
    :catchall_1
    move-exception v0

    move-object v5, v7

    move-object v15, v11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_2
    const-wide/16 v12, -0x1

    goto/16 :goto_2a

    .line 923
    :cond_2
    const/4 v12, 0x1

    :try_start_4
    new-array v13, v12, [Ljava/lang/String;

    const-string v18, "id"

    aput-object v18, v13, v10

    invoke-static {v0, v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 924
    invoke-static {v0, v5, v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->integerProperty(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v12

    .line 925
    invoke-static {v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_22

    const-string v14, " taskId="

    if-eqz v19, :cond_29

    :try_start_5
    invoke-static {v9}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    move-object v5, v7

    move-object v0, v9

    move-object v3, v11

    move-object v8, v13

    move-object v6, v14

    const-wide/16 v13, -0x1

    goto/16 :goto_25

    .line 931
    :cond_3
    invoke-static {v1, v11, v0, v13}, Lcom/shabakaty/cinemana/ca1/Recovery92;->read(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_22

    .line 932
    if-nez v10, :cond_4

    .line 933
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB_PROMOTE_FAIL: CinemanaDownloadItem row not found id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 934
    const/4 v1, 0x0

    return v1

    .line 1144
    :catchall_2
    move-exception v0

    move-object v5, v7

    move-object v15, v11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    goto/16 :goto_28

    .line 936
    :cond_4
    move-object/from16 v21, v14

    const/4 v14, 0x2

    move-object/from16 v22, v8

    :try_start_7
    new-array v8, v14, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v4, v8, v19

    const/16 v18, 0x1

    aput-object v3, v8, v18

    invoke-static {v10, v8}, Lcom/shabakaty/cinemana/features/MkvExporter;->readProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_22

    .line 938
    if-nez v8, :cond_5

    move-object v8, v0

    .line 940
    :cond_5
    const/4 v10, 0x1

    :try_start_8
    new-array v14, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v14, v10

    invoke-static {v8, v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_20

    .line 941
    const/4 v14, -0x1

    :try_start_9
    invoke-static {v8, v2, v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->integerProperty(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1f

    .line 947
    :try_start_a
    invoke-static {v15, v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->getDownloadsDao(Landroid/content/Context;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1e

    .line 948
    if-nez v14, :cond_6

    .line 949
    :try_start_b
    const-string v0, "DB_PROMOTE_FAIL: DownloadsDao unavailable"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 950
    const/4 v1, 0x0

    return v1

    .line 1144
    :catchall_3
    move-exception v0

    move-object v5, v7

    move-object v2, v10

    move-object v15, v11

    move-object v11, v14

    move/from16 v14, v24

    :goto_3
    const/4 v4, 0x0

    const/4 v9, 0x0

    goto/16 :goto_2

    .line 952
    :cond_6
    :try_start_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1d

    move-object/from16 v25, v7

    :try_start_d
    const-string v7, "DB_PROMOTE_DOWNLOADS_DAO="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 954
    const/4 v7, 0x1

    new-array v15, v7, [Ljava/lang/String;

    const-string v7, "title"

    const/16 v19, 0x0

    aput-object v7, v15, v19

    invoke-static {v8, v15}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 955
    move-object/from16 v26, v3

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/String;

    const-string v15, "season"

    const/16 v19, 0x0

    aput-object v15, v3, v19

    invoke-static {v8, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 956
    move-object/from16 v27, v4

    const/4 v15, 0x1

    new-array v4, v15, [Ljava/lang/String;

    const-string v15, "episodeNumber"

    const/16 v19, 0x0

    aput-object v15, v4, v19

    invoke-static {v8, v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 957
    invoke-static {v7, v3, v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->buildExpectedBase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->stripMarker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1c

    .line 958
    move-object/from16 v28, v11

    :try_start_e
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripNoSubPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->stripMarker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 959
    invoke-static {v15}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v29
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1b

    if-eqz v29, :cond_28

    :try_start_f
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_7

    move-object/from16 v17, v8

    move-object v2, v10

    move-object v8, v13

    move-object v4, v14

    move-object/from16 v5, v25

    move-object/from16 v3, v28

    const-wide/16 v13, -0x1

    goto/16 :goto_20

    .line 965
    :cond_7
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v15, ".mkv"

    invoke-virtual {v11, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_19

    if-eqz v11, :cond_8

    .line 966
    :try_start_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x4

    move-object/from16 v29, v2

    const/4 v2, 0x0

    invoke-virtual {v9, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ".mp4"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_4

    .line 1144
    :catchall_4
    move-exception v0

    move-object v2, v10

    move-object v11, v14

    move/from16 v14, v24

    move-object/from16 v5, v25

    move-object/from16 v15, v28

    goto/16 :goto_3

    .line 967
    :cond_8
    move-object/from16 v29, v2

    const/4 v2, 0x0

    .line 969
    :goto_4
    :try_start_11
    invoke-static {v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->readAllDownloads(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_19

    .line 970
    nop

    .line 971
    nop

    .line 972
    nop

    .line 974
    const-string v15, "y"

    move-object/from16 v30, v6

    const-string v6, "x"

    const/high16 v21, -0x80000000

    if-eqz v11, :cond_14

    .line 975
    :try_start_12
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move-object/from16 v32, v14

    move/from16 v14, v21

    const/16 v21, -0x1

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, -0x1

    :goto_5
    :try_start_13
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_13

    move-object/from16 v38, v9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 976
    if-nez v9, :cond_9

    move-object/from16 v9, v38

    goto :goto_5

    .line 977
    :cond_9
    move-object/from16 v39, v11

    const-string v11, "r"

    move-object/from16 v40, v4

    const/4 v4, -0x1

    invoke-static {v9, v11, v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->integerProperty(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v11

    .line 978
    move-object/from16 v41, v3

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "s"

    const/16 v19, 0x0

    aput-object v4, v3, v19

    invoke-static {v9, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 979
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    aput-object v6, v0, v19

    invoke-static {v9, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 980
    move-object/from16 v42, v6

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "u"

    const/16 v19, 0x0

    aput-object v0, v6, v19

    invoke-static {v9, v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 981
    nop

    .line 982
    nop

    .line 988
    invoke-static {v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 989
    nop

    .line 990
    const/16 v6, 0x1388

    move-object/from16 v43, v3

    move v3, v6

    const/4 v6, 0x1

    goto :goto_6

    .line 992
    :cond_a
    move-object/from16 v43, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_6
    if-eqz v4, :cond_b

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_b

    .line 993
    add-int/lit16 v3, v3, 0x3e8

    .line 994
    const/4 v6, 0x1

    .line 996
    :cond_b
    if-eqz v4, :cond_c

    if-eqz v2, :cond_c

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_c

    .line 997
    add-int/lit16 v3, v3, 0x384

    .line 998
    const/4 v6, 0x1

    .line 1000
    :cond_c
    if-ne v11, v12, :cond_d

    if-ltz v12, :cond_d

    add-int/lit16 v3, v3, 0xfa

    .line 1001
    :cond_d
    invoke-static {v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_e

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_e

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_e

    add-int/lit8 v3, v3, 0x78

    .line 1002
    :cond_e
    invoke-static {v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_f

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_f

    .line 1003
    move/from16 v44, v6

    invoke-static {v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    add-int/lit8 v3, v3, 0x50

    goto :goto_7

    .line 1002
    :cond_f
    move/from16 v44, v6

    .line 1004
    :cond_10
    :goto_7
    if-eqz v4, :cond_11

    invoke-static {v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1005
    invoke-static {v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v0, :cond_11

    add-int/lit8 v3, v3, 0x1e

    .line 1007
    :cond_11
    if-le v3, v14, :cond_12

    .line 1008
    nop

    .line 1009
    nop

    .line 1010
    nop

    .line 1011
    nop

    .line 1012
    move v0, v3

    move-object v6, v4

    const-wide/16 v3, -0x1

    :try_start_14
    invoke-static {v9, v15, v3, v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->longProperty(Ljava/lang/Object;Ljava/lang/String;J)J

    move-result-wide v36
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 1013
    nop

    .line 1014
    move v14, v0

    move-object/from16 v35, v6

    move-object/from16 v33, v9

    move/from16 v21, v11

    move-object/from16 v34, v43

    move/from16 v31, v44

    goto :goto_8

    .line 1144
    :catchall_5
    move-exception v0

    move-object v9, v6

    move-object v2, v10

    move/from16 v14, v24

    move-object/from16 v5, v25

    move-object/from16 v15, v28

    move-object/from16 v11, v32

    move-object/from16 v4, v33

    goto :goto_9

    .line 1016
    :cond_12
    :goto_8
    move-object/from16 v0, p1

    move-object/from16 v9, v38

    move-object/from16 v11, v39

    move-object/from16 v4, v40

    move-object/from16 v3, v41

    move-object/from16 v6, v42

    goto/16 :goto_5

    .line 975
    :cond_13
    move-object/from16 v41, v3

    move-object/from16 v40, v4

    move-object/from16 v42, v6

    move-object/from16 v38, v9

    move v3, v14

    move/from16 v14, v21

    move/from16 v0, v31

    move-object/from16 v4, v33

    move-object/from16 v6, v34

    move-object/from16 v9, v35

    move-object/from16 v31, v10

    move-wide/from16 v10, v36

    goto :goto_a

    .line 1144
    :catchall_6
    move-exception v0

    move-object v2, v10

    move/from16 v14, v24

    move-object/from16 v5, v25

    move-object/from16 v15, v28

    move-object/from16 v11, v32

    move-object/from16 v4, v33

    move-object/from16 v9, v35

    :goto_9
    move-wide/from16 v12, v36

    goto/16 :goto_2a

    :catchall_7
    move-exception v0

    move-object/from16 v32, v14

    move-object v2, v10

    move/from16 v14, v24

    move-object/from16 v5, v25

    move-object/from16 v15, v28

    move-object/from16 v11, v32

    goto/16 :goto_3

    .line 974
    :cond_14
    move-object/from16 v41, v3

    move-object/from16 v40, v4

    move-object/from16 v42, v6

    move-object/from16 v38, v9

    move-object/from16 v32, v14

    move-object/from16 v31, v10

    move/from16 v3, v21

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v14, -0x1

    .line 1019
    :goto_a
    move-object/from16 v21, v2

    const-string v2, " title="

    move-object/from16 v33, v13

    const-string v13, " exactPath="

    move-wide/from16 v34, v10

    const-string v10, " score="

    if-eqz v4, :cond_27

    :try_start_15
    invoke-static {v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v11
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_16

    if-eqz v11, :cond_27

    if-nez v0, :cond_15

    const/16 v11, 0x78

    if-ge v3, v11, :cond_15

    move v6, v3

    move-object/from16 v17, v8

    move-object/from16 v5, v25

    move-object/from16 v15, v28

    move-object/from16 v11, v32

    move-object v8, v2

    move-wide/from16 v2, v34

    goto/16 :goto_1d

    .line 1029
    :cond_15
    if-eq v12, v14, :cond_16

    .line 1030
    :try_start_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v15

    const-string v15, "DB_PROMOTE_ID_RECOVERED oldTaskId="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " recoveredTaskId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1034
    nop

    .line 1035
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v5, v11}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1036
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v15, p1

    invoke-static {v15, v5, v11}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    move v12, v14

    goto :goto_b

    .line 1144
    :catchall_8
    move-exception v0

    move/from16 v14, v24

    move-object/from16 v5, v25

    move-object/from16 v15, v28

    move-object/from16 v2, v31

    move-object/from16 v11, v32

    goto/16 :goto_1f

    .line 1029
    :cond_16
    move-object/from16 v36, v15

    move-object/from16 v15, p1

    .line 1039
    :goto_b
    :try_start_17
    invoke-static {v4, v8}, Lcom/shabakaty/cinemana/features/DownloadTitle127;->cleanRows(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DB_PROMOTE_DOWNLOADS_MATCH task_id="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " external_id="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " originalPath="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " season="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, v41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " episode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1046
    move-object/from16 v0, v38

    move-object/from16 v2, v42

    invoke-static {v4, v2, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1047
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v5, v36

    invoke-static {v4, v5, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_15

    .line 1048
    move-object/from16 v11, v32

    :try_start_18
    invoke-static {v11, v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->callDownloadsUpdate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1049
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DB_PROMOTE_DOWNLOADS_RESULT="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1051
    invoke-static {v11, v12, v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->findDownloadsRow(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_14

    .line 1052
    if-nez v3, :cond_17

    .line 1053
    :try_start_19
    const-string v0, "DB_PROMOTE_FAIL: Downloads row disappeared after DAO update"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 1054
    const/4 v7, 0x0

    return v7

    .line 1144
    :catchall_9
    move-exception v0

    move/from16 v14, v24

    move-object/from16 v5, v25

    move-object/from16 v15, v28

    move-object/from16 v2, v31

    goto/16 :goto_1f

    .line 1056
    :cond_17
    const/4 v7, 0x0

    const/4 v10, 0x1

    :try_start_1a
    new-array v13, v10, [Ljava/lang/String;

    aput-object v2, v13, v7

    invoke-static {v3, v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1057
    const-wide/16 v13, -0x1

    invoke-static {v3, v5, v13, v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->longProperty(Ljava/lang/Object;Ljava/lang/String;J)J

    move-result-wide v13

    .line 1058
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_14

    const-string v5, " expected="

    if-nez v3, :cond_18

    .line 1059
    :try_start_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB_PROMOTE_FAIL: Downloads.path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 1061
    move-wide/from16 v2, v34

    :try_start_1c
    invoke-static {v11, v4, v9, v2, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->restoreDownloadsRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 1062
    const/4 v1, 0x0

    return v1

    .line 1144
    :catchall_a
    move-exception v0

    goto :goto_c

    :catchall_b
    move-exception v0

    move-wide/from16 v2, v34

    :goto_c
    move-wide v12, v2

    move/from16 v14, v24

    move-object/from16 v5, v25

    move-object/from16 v15, v28

    goto/16 :goto_1c

    .line 1064
    :cond_18
    move-object/from16 v42, v2

    move-wide/from16 v2, v34

    :try_start_1d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DB_PROMOTE_DOWNLOADS_VERIFIED path="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " size="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1067
    move-object/from16 v7, v30

    invoke-static {v8, v7, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    .line 1068
    const-wide/16 v13, 0x0

    cmp-long v10, p3, v13

    const-wide/32 v13, 0x7fffffff

    const-wide/32 v15, 0x100000

    if-lez v10, :cond_1a

    .line 1069
    add-long v20, p3, v15

    const-wide/16 v34, 0x1

    sub-long v20, v20, v34

    :try_start_1e
    div-long v20, v20, v15

    .line 1070
    cmp-long v17, v20, v13

    if-lez v17, :cond_19

    goto :goto_d

    :cond_19
    move-wide/from16 v13, v20

    .line 1071
    :goto_d
    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v14, v29

    invoke-static {v8, v14, v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    goto :goto_e

    .line 1068
    :cond_1a
    move-object/from16 v14, v29

    .line 1074
    :goto_e
    :try_start_1f
    const-string v13, "com.shabakaty.downloader.kw0"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 1075
    const-string v17, "com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 1076
    const-string v16, "com.shabakaty.downloader.kw0$h"

    move-object/from16 v29, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 1077
    filled-new-array {v13, v15}, [Ljava/lang/Class;

    move-result-object v15

    .line 1078
    invoke-virtual {v14, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    move/from16 v16, v10

    move-object/from16 v15, v28

    :try_start_20
    filled-new-array {v15, v8}, [Ljava/lang/Object;

    move-result-object v10

    .line 1079
    invoke-virtual {v14, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1080
    check-cast v10, Ljava/util/concurrent/Callable;

    invoke-interface {v10}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v10

    .line 1081
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    move-object/from16 v17, v8

    :try_start_21
    const-string v8, "DB_PROMOTE_ITEM_RESULT="

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1083
    move-object/from16 v8, v33

    invoke-static {v15, v8}, Lcom/shabakaty/cinemana/features/MkvExporter;->readCombinedById(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 1084
    if-nez v10, :cond_1b

    .line 1085
    const-string v0, "DB_PROMOTE_FAIL: post-update Cinemana query returned null"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1086
    invoke-static {v11, v4, v9, v2, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->restoreDownloadsRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;J)V

    .line 1087
    const/4 v1, 0x0

    return v1

    .line 1089
    :cond_1b
    move-object/from16 v28, v6

    const/4 v14, 0x2

    new-array v6, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v27, v6, v14

    const/4 v14, 0x1

    aput-object v26, v6, v14

    invoke-static {v10, v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->readProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1091
    move/from16 v30, v12

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v12, v14

    invoke-static {v6, v12}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1092
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c

    .line 1093
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DB_PROMOTE_FAIL: CinemanaDownloadItem.path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1095
    invoke-static {v11, v4, v9, v2, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->restoreDownloadsRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;J)V

    .line 1096
    const/4 v1, 0x0

    return v1

    .line 1099
    :cond_1c
    const-string v6, "com.shabakaty.cinemana.data.db.downloads.SubtitleDb"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1100
    const-string v12, "com.shabakaty.downloader.kw0$d"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    .line 1101
    move-wide/from16 v32, v2

    const/4 v14, 0x2

    :try_start_22
    new-array v2, v14, [Ljava/lang/String;

    const-string v3, "subtitles"

    const/4 v14, 0x0

    aput-object v3, v2, v14

    const-string v3, "getSubtitles"

    const/4 v14, 0x1

    aput-object v3, v2, v14

    invoke-static {v10, v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->readProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1102
    instance-of v3, v2, Ljava/lang/Iterable;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    if-eqz v3, :cond_20

    .line 1103
    :try_start_23
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1104
    if-nez v3, :cond_1d

    goto :goto_f

    .line 1105
    :cond_1d
    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/String;

    const-string v10, "file"

    const/16 v19, 0x0

    aput-object v10, v14, v19

    invoke-static {v3, v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1106
    invoke-static {v10}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1e

    goto :goto_f

    .line 1107
    :cond_1e
    filled-new-array {v3, v10}, [Ljava/lang/Object;

    move-result-object v10
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    move-object/from16 v14, v25

    :try_start_24
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    const-string v10, "file"

    move-object/from16 v25, v2

    move-object/from16 v2, v22

    invoke-static {v3, v10, v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1109
    filled-new-array {v13, v6}, [Ljava/lang/Class;

    move-result-object v10

    .line 1110
    invoke-virtual {v12, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    filled-new-array {v15, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1111
    invoke-virtual {v10, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1112
    check-cast v3, Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    .line 1113
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v2

    const-string v2, "DB_PROMOTE_SUBTITLE_RESULT="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    .line 1114
    move-object/from16 v2, v25

    move-object/from16 v25, v14

    goto :goto_f

    .line 1103
    :cond_1f
    move-object/from16 v14, v25

    goto :goto_11

    .line 1144
    :catchall_c
    move-exception v0

    move-object/from16 v8, v17

    move/from16 v14, v24

    move-object/from16 v5, v25

    :goto_10
    move-object/from16 v2, v31

    move-wide/from16 v12, v32

    goto/16 :goto_2a

    .line 1102
    :cond_20
    move-object/from16 v14, v25

    .line 1117
    :goto_11
    :try_start_25
    invoke-static {v15, v8}, Lcom/shabakaty/cinemana/features/MkvExporter;->readCombinedById(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1118
    if-nez v2, :cond_21

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_12

    .line 1119
    :cond_21
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v27, v3, v6

    const/4 v6, 0x1

    aput-object v26, v3, v6

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->readProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1120
    :goto_12
    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1121
    move-object/from16 v3, v28

    move/from16 v12, v30

    invoke-static {v11, v12, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->findDownloadsRow(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1122
    if-nez v6, :cond_22

    const/4 v6, 0x0

    goto :goto_13

    :cond_22
    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v42, v13, v10

    invoke-static {v6, v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1124
    :goto_13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    if-eqz v10, :cond_26

    :try_start_26
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    goto/16 :goto_15

    .line 1132
    :cond_23
    move-object/from16 v2, p1

    invoke-static {v2, v7, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1133
    if-lez v16, :cond_25

    .line 1134
    const-wide/32 v5, 0x100000

    add-long v20, p3, v5

    const-wide/16 v22, 0x1

    sub-long v20, v20, v22

    div-long v20, v20, v5

    .line 1135
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v20, v5

    if-lez v7, :cond_24

    goto :goto_14

    :cond_24
    move-wide/from16 v5, v20

    .line 1136
    :goto_14
    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v29

    invoke-static {v2, v6, v5}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1139
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB_PROMOTE_SUCCESS path="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " task_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " external_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " item_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIMARY_IDENTITY_VERIFIED=downloadTaskId:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";externalId:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";itemId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 1143
    const/4 v0, 0x1

    return v0

    .line 1144
    :catchall_d
    move-exception v0

    move-object v5, v14

    move-object/from16 v8, v17

    move/from16 v14, v24

    goto/16 :goto_10

    .line 1125
    :cond_26
    :goto_15
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DB_PROMOTE_FAIL: cross-db verification failed cinemana="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " downloads="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 1128
    move-wide/from16 v2, v32

    :try_start_28
    invoke-static {v11, v4, v9, v2, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->restoreDownloadsRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;J)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    .line 1129
    const/4 v1, 0x0

    return v1

    .line 1144
    :catchall_e
    move-exception v0

    goto :goto_16

    :catchall_f
    move-exception v0

    move-wide/from16 v2, v32

    :goto_16
    move-wide v12, v2

    move-object v5, v14

    move-object/from16 v8, v17

    goto :goto_1b

    :catchall_10
    move-exception v0

    move-wide/from16 v2, v32

    goto :goto_17

    :catchall_11
    move-exception v0

    :goto_17
    move-wide v12, v2

    move-object/from16 v8, v17

    goto :goto_1a

    :catchall_12
    move-exception v0

    move-object/from16 v17, v8

    goto :goto_19

    :catchall_13
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v15, v28

    goto :goto_19

    :catchall_14
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v15, v28

    goto :goto_18

    :catchall_15
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v15, v28

    move-object/from16 v11, v32

    :goto_18
    move-wide/from16 v2, v34

    :goto_19
    move-wide v12, v2

    :goto_1a
    move/from16 v14, v24

    move-object/from16 v5, v25

    goto :goto_1c

    :catchall_16
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v5, v25

    move-object/from16 v15, v28

    move-object/from16 v11, v32

    move-wide/from16 v2, v34

    move-wide v12, v2

    :goto_1b
    move/from16 v14, v24

    :goto_1c
    move-object/from16 v2, v31

    goto/16 :goto_2a

    .line 1019
    :cond_27
    move v6, v3

    move-object/from16 v17, v8

    move-object/from16 v5, v25

    move-object/from16 v15, v28

    move-object/from16 v11, v32

    move-object v8, v2

    move-wide/from16 v2, v34

    .line 1020
    :goto_1d
    move-wide/from16 v34, v2

    :try_start_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB_PROMOTE_FAIL: Downloads row could not be matched taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matchedTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " originalPath="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_18

    move-object/from16 v2, v31

    :try_start_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " expectedVideo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v3, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_17

    .line 1026
    const/4 v1, 0x0

    return v1

    .line 1144
    :catchall_17
    move-exception v0

    goto :goto_1e

    :catchall_18
    move-exception v0

    move-object/from16 v2, v31

    :goto_1e
    move-object/from16 v8, v17

    move/from16 v14, v24

    :goto_1f
    move-wide/from16 v12, v34

    goto/16 :goto_2a

    :catchall_19
    move-exception v0

    move-object/from16 v17, v8

    move-object v2, v10

    move-object v11, v14

    move-object/from16 v5, v25

    move-object/from16 v15, v28

    const-wide/16 v13, -0x1

    goto/16 :goto_22

    .line 959
    :cond_28
    move-object/from16 v17, v8

    move-object v2, v10

    move-object v8, v13

    move-object v4, v14

    move-object/from16 v5, v25

    move-object/from16 v3, v28

    const-wide/16 v13, -0x1

    .line 960
    :goto_20
    :try_start_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB_PROMOTE_FAIL: identity mismatch expected="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " actual="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " itemId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1a

    .line 963
    const/4 v1, 0x0

    return v1

    .line 1144
    :catchall_1a
    move-exception v0

    move-object v15, v3

    move-object v11, v4

    move-wide v12, v13

    move-object/from16 v8, v17

    goto :goto_23

    :catchall_1b
    move-exception v0

    move-object/from16 v17, v8

    move-object v2, v10

    move-object v4, v14

    move-object/from16 v5, v25

    move-object/from16 v3, v28

    goto :goto_21

    :catchall_1c
    move-exception v0

    move-object/from16 v17, v8

    move-object v2, v10

    move-object v3, v11

    move-object v4, v14

    move-object/from16 v5, v25

    goto :goto_21

    :catchall_1d
    move-exception v0

    move-object v5, v7

    move-object/from16 v17, v8

    move-object v2, v10

    move-object v3, v11

    move-object v4, v14

    :goto_21
    const-wide/16 v13, -0x1

    move-object v15, v3

    move-object v11, v4

    :goto_22
    move-wide v12, v13

    :goto_23
    move/from16 v14, v24

    const/4 v4, 0x0

    const/4 v9, 0x0

    goto/16 :goto_2a

    :catchall_1e
    move-exception v0

    move-object v5, v7

    move-object/from16 v17, v8

    move-object v2, v10

    move-object v3, v11

    const-wide/16 v13, -0x1

    move-object v15, v3

    move-wide v12, v13

    move/from16 v14, v24

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    goto/16 :goto_2a

    :catchall_1f
    move-exception v0

    move-object v5, v7

    move-object/from16 v17, v8

    move-object v2, v10

    move-object v3, v11

    const-wide/16 v13, -0x1

    move-object v15, v3

    move-wide v12, v13

    goto :goto_24

    :catchall_20
    move-exception v0

    move-object v5, v7

    move-object/from16 v17, v8

    move-object v3, v11

    const-wide/16 v13, -0x1

    move-object v15, v3

    move-wide v12, v13

    const/4 v2, 0x0

    :goto_24
    const/4 v4, 0x0

    goto :goto_27

    .line 925
    :cond_29
    move-object v5, v7

    move-object v0, v9

    move-object v3, v11

    move-object v8, v13

    move-object v6, v14

    const-wide/16 v13, -0x1

    .line 926
    :goto_25
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB_PROMOTE_FAIL: missing identity itemId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mkv="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_21

    .line 928
    const/4 v1, 0x0

    return v1

    .line 1144
    :catchall_21
    move-exception v0

    goto :goto_26

    :catchall_22
    move-exception v0

    move-object v5, v7

    move-object v3, v11

    const-wide/16 v13, -0x1

    :goto_26
    move-object v15, v3

    move-wide v12, v13

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_27
    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_28
    const/4 v14, -0x1

    goto :goto_2a

    :catchall_23
    move-exception v0

    move-object v5, v7

    const-wide/16 v13, -0x1

    move-wide v12, v13

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, -0x1

    :goto_29
    const/4 v15, 0x0

    .line 1145
    :goto_2a
    nop

    .line 1146
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2a

    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_2a

    .line 1147
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1149
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB_PROMOTE_EXCEPTION="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1150
    const-string v1, "CNM_MKV"

    const-string v3, "promoteDatabase failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    if-eqz v11, :cond_2b

    if-eqz v4, :cond_2b

    .line 1153
    :try_start_2d
    invoke-static {v11, v4, v9, v12, v13}, Lcom/shabakaty/cinemana/features/MkvExporter;->restoreDownloadsRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;J)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_24

    goto :goto_2b

    .line 1155
    :catchall_24
    move-exception v0

    :cond_2b
    :goto_2b
    nop

    .line 1156
    if-eqz v15, :cond_2c

    if-eqz v8, :cond_2c

    .line 1157
    :try_start_2e
    invoke-static {v15, v8, v2, v14}, Lcom/shabakaty/cinemana/features/MkvExporter;->restoreCinemanaItem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_25

    goto :goto_2c

    :catchall_25
    move-exception v0

    :cond_2c
    :goto_2c
    nop

    .line 1158
    :try_start_2f
    invoke-static {v15, v5}, Lcom/shabakaty/cinemana/features/MkvExporter;->restoreSubtitleSnapshots(Ljava/lang/Object;Ljava/util/List;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_26

    goto :goto_2d

    :catchall_26
    move-exception v0

    .line 1159
    :goto_2d
    const/4 v1, 0x0

    return v1
.end method

.method private static promoteDatabaseWithRetry(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)Z
    .locals 9

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {p0, p1, v1, v2, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->promoteDatabase(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v5, 0x3

    if-ge v0, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SORT_DB_PROMOTE_RETRY attempt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    return v4
.end method

.method private static readAllDownloads(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1184
    const-string v0, "com.shabakaty.downloader.lz0"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1185
    const-string v1, "com.shabakaty.downloader.yt3"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1186
    const-class v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "a"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1187
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SELECT * FROM Downloads"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1188
    const-string v3, "com.shabakaty.downloader.lz0$c"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1189
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1190
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    .line 1191
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static readCombinedById(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1235
    const-string v0, "com.shabakaty.downloader.kw0"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1236
    const-string v1, "com.shabakaty.downloader.yt3"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1237
    const-class v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "a"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1238
    nop

    .line 1239
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SELECT * FROM CinemanaDownloadItem Where id = ? LIMIT 1"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v4

    .line 1238
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1240
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "I"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1241
    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    const-string p1, "com.shabakaty.downloader.kw0$p"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1243
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1244
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static readDownloadsByTaskId(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1248
    const-string v0, "com.shabakaty.downloader.lz0"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1249
    const-string v1, "com.shabakaty.downloader.yt3"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1250
    const-class v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "a"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1251
    nop

    .line 1252
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SELECT * FROM Downloads WHERE ? = task_id"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v4

    .line 1251
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1253
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "h0"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1254
    int-to-long v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    const-string p1, "com.shabakaty.downloader.lz0$a"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1256
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1257
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs readProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    .line 1305
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1306
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1307
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 1308
    move-object v6, v1

    .line 1309
    :goto_1
    if-eqz v6, :cond_1

    .line 1311
    :try_start_0
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1312
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1313
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1314
    :catchall_0
    move-exception v7

    .line 1315
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_1

    .line 1318
    :cond_1
    :try_start_1
    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1319
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    .line 1320
    :catchall_1
    move-exception v5

    .line 1307
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1322
    :cond_2
    return-object v0
.end method

.method private static resolvePath(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 850
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 851
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "content://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 852
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 854
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cinemana/work/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 851
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static restoreCinemanaItem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1261
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1262
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "path"

    invoke-static {p1, v0, p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1263
    :cond_1
    if-ltz p3, :cond_2

    const-string p2, "sizeMB"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1264
    :cond_2
    const-string p2, "com.shabakaty.downloader.kw0"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 1265
    const-string p3, "com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem"

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 1266
    const-string v0, "com.shabakaty.downloader.kw0$h"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1267
    filled-new-array {p2, p3}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1268
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 1269
    return-void

    .line 1261
    :cond_3
    :goto_0
    return-void
.end method

.method private static restoreDownloadsRow(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1214
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1215
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "x"

    invoke-static {p1, v0, p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1216
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-ltz p2, :cond_2

    const-string p2, "y"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1217
    :cond_2
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->callDownloadsUpdate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    return-void

    .line 1214
    :cond_3
    :goto_0
    return-void
.end method

.method private static restoreSubtitleSnapshots(Ljava/lang/Object;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1221
    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1222
    :cond_0
    const-string v0, "com.shabakaty.downloader.kw0"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1223
    const-string v1, "com.shabakaty.cinemana.data.db.downloads.SubtitleDb"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1224
    const-string v2, "com.shabakaty.downloader.kw0$d"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 1226
    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v5, v3, v4

    if-nez v5, :cond_2

    goto :goto_0

    .line 1227
    :cond_2
    const/4 v6, 0x1

    aget-object v6, v3, v6

    const-string v7, "file"

    invoke-static {v5, v7, v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1228
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    aget-object v3, v3, v4

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1229
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1230
    check-cast v3, Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 1231
    goto :goto_0

    .line 1232
    :cond_3
    return-void

    .line 1221
    :cond_4
    :goto_1
    return-void
.end method

.method private static safeDelete(Ljava/io/File;)Z
    .locals 3

    .line 598
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 600
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    .line 601
    :catchall_0
    move-exception p0

    .line 602
    return v1

    .line 598
    :cond_3
    :goto_1
    return v0
.end method

.method private static sameFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    .line 589
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 589
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static sanitizeFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1633
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1634
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Unknown"

    if-nez v0, :cond_0

    return-object v1

    .line 1635
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1636
    const/16 v0, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1637
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2a

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x22

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1638
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3e

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x7c

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1639
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1640
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb4

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1641
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p0

    :cond_2
    return-object v1
.end method

.method private static sanitizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 796
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 797
    :cond_0
    const/16 v0, 0x2f

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1423
    if-nez p0, :cond_0

    return-void

    .line 1424
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1425
    :goto_0
    if-eqz v0, :cond_1

    .line 1427
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1428
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1429
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    return-void

    .line 1431
    :catchall_0
    move-exception v1

    .line 1432
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1434
    :cond_1
    return-void
.end method

.method private static signature(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 338
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 827
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 828
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 829
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    .line 830
    move-object v6, v1

    .line 831
    :goto_1
    if-eqz v6, :cond_2

    .line 833
    :try_start_0
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 834
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 835
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 836
    if-eqz v7, :cond_1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 837
    :catchall_0
    move-exception v7

    :cond_1
    nop

    .line 838
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_1

    .line 841
    :cond_2
    :try_start_1
    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 842
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 843
    if-eqz v5, :cond_3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    .line 844
    :catchall_1
    move-exception v5

    :cond_3
    nop

    .line 829
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 846
    :cond_4
    return-object v0
.end method

.method private static stripExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1442
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1443
    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static stripNoSubPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 801
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 802
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 803
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "(No Sub) "

    const/4 v5, 0x0

    const/16 v6, 0x9

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 804
    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "(No Sub)"

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 805
    :cond_2
    return-object p0
.end method

.method private static targetLogBase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1405
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1406
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".mkv.log"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static titlePartBeforeEpisode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 704
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 705
    :cond_0
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 706
    if-gtz v0, :cond_1

    return-object p0

    .line 707
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 708
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 709
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_4

    goto :goto_1

    .line 711
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 710
    :cond_5
    :goto_1
    return-object p0

    .line 708
    :cond_6
    :goto_2
    return-object p0
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1439
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static waitAndExport(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->init(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->isReadyToken(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MKV_MANIFEST_DEFER token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvExporter;->ensureLogDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->migrateLegacyLogs(Ljava/io/File;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mkv.log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Inputs114;->verified(Ljava/lang/Object;Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->expectedSubtitleCount(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->completedSubtitleCount(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SUBTITLE_POLICY=manifest-ready expected="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v0, " completed="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v0, " files="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v0, " token="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendLog(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p1, v4, v5, p2}, Lcom/shabakaty/cinemana/features/MkvExporter;->export(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/io/File;Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v0, "MKV_MANIFEST_DEFER token missing from final MP4 path"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "MKV_MANIFEST_DEFER final MP4 too small"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "MKV_MANIFEST_DEFER final MP4 missing"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static waitForCompletedVideoAndExport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 170
    const-string v0, "watcher started; waiting for final video filename (not .temp)"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    move-wide v9, v7

    .line 172
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    const-wide/32 v13, 0x1d4c0

    cmp-long v11, v11, v13

    if-gez v11, :cond_d

    .line 173
    invoke-static/range {p0 .. p5}, Lcom/shabakaty/cinemana/features/MkvExporter;->locateVideoForItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/File;

    move-result-object v11

    .line 175
    const-string v12, " size="

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 176
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 177
    invoke-virtual {v11, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 178
    cmp-long v5, v13, v5

    if-nez v5, :cond_8

    const-wide/16 v5, 0x400

    cmp-long v15, v13, v5

    if-ltz v15, :cond_8

    .line 179
    cmp-long v15, v9, v7

    if-nez v15, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 180
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v9

    const-wide/16 v17, 0x7d0

    cmp-long v15, v15, v17

    if-ltz v15, :cond_a

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final video stable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    invoke-static/range {p0 .. p5}, Lcom/shabakaty/cinemana/features/MkvExporter;->locateVideoForItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/io/File;

    move-result-object v11

    .line 188
    :goto_1
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 192
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 193
    const-string v3, ".mkv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/shabakaty/cinemana/features/MkvExporter;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ".mp4"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    goto :goto_2

    .line 199
    :cond_3
    move-object v11, v0

    goto :goto_3

    .line 196
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SKIP_EXISTING_MKV: no fresh MP4 sibling for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    return-void

    .line 207
    :cond_5
    :goto_3
    move-object v3, v11

    .line 209
    if-eqz v3, :cond_6

    .line 210
    nop

    .line 212
    :try_start_0
    const-string v0, "path"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 213
    :catchall_0
    move-exception v0

    :goto_4
    nop

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VIDEO_READY_FOR_MKV path="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object v11, v3

    .line 217
    :cond_6
    invoke-static {v1, v11, v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->waitAndExport(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;)V

    .line 218
    return-void

    .line 189
    :cond_7
    :goto_5
    const-string v0, "SKIP_STALE_CALLBACK: completed source no longer exists"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    return-void

    .line 221
    :cond_8
    move-wide v9, v7

    goto :goto_6

    .line 224
    :cond_9
    nop

    .line 225
    nop

    .line 226
    nop

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "candidate video observed: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 228
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    move-wide v9, v7

    move-object v0, v11

    .line 230
    :cond_a
    :goto_6
    nop

    .line 231
    move-wide v5, v13

    goto :goto_7

    .line 235
    :cond_b
    invoke-static/range {p2 .. p4}, Lcom/shabakaty/cinemana/features/MkvExporter;->buildExpectedBase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 236
    invoke-static {v11}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 237
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    const-string v7, "Cinemana/work"

    invoke-direct {v14, v15, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp4.temp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v14, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "temporary video still downloading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 240
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 239
    invoke-static {v1, v7}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    :cond_c
    :goto_7
    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 246
    const-wide/16 v7, 0x0

    goto/16 :goto_0

    .line 248
    :cond_d
    const-string v0, "TIMEOUT: final video file was not stable within 2 minutes"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private static writeIdentityRecord(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;Z)V
    .locals 10

    .line 1502
    const-string v0, ""

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 1504
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvExporter;->ensureLogDir()Ljava/io/File;

    move-result-object v1

    .line 1505
    new-instance v2, Ljava/io/File;

    const-string v3, "mkv_identity.map"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1506
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "getId"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p1, v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->firstNonEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1507
    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "nb"

    aput-object v4, v1, v5

    const-string v4, "getNb"

    aput-object v4, v1, v6

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->stringProperty(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->firstNonEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    const-string v1, "downloadTaskId"

    const/4 v4, -0x1

    invoke-static {p1, v1, v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->integerProperty(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1510
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1511
    const-string v7, "UTC"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1512
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvExporter;->nonEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, p1

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1513
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|itemId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "|nb="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|taskId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "|noSub="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "|path="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1518
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "|utc="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1519
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1520
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1521
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1522
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1523
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MKV_INTERNAL_IDENTITY="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " path="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " noSub="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1526
    goto :goto_1

    .line 1522
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1524
    :catchall_1
    move-exception p1

    .line 1525
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MKV_INTERNAL_IDENTITY_WRITE_FAILED="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvExporter;->appendExternalLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1527
    :goto_1
    return-void

    .line 1502
    :cond_3
    :goto_2
    return-void
.end method
