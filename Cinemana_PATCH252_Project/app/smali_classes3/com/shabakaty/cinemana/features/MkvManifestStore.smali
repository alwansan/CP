.class public final Lcom/shabakaty/cinemana/features/MkvManifestStore;
.super Ljava/lang/Object;
.source "MkvManifestStore.java"


# static fields
.field private static final PLAN_PREFS:Ljava/lang/String; = "cnm_mkv_plan_v54"

.field private static final PREFS:Ljava/lang/String; = "cnm_mkv_manifest_v66"

.field private static volatile context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized beginPlan(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const-class v0, Lcom/shabakaty/cinemana/features/MkvManifestStore;

    monitor-enter v0

    :try_start_0
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->init(Landroid/content/Context;)V

    const-string v1, "cnm_mkv_plan_v54"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "cnm_mkv_manifest_v66"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->terminalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->completedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->videoStateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->videoPathKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static completedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "|sub_completed"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static completedSubtitleCount(Ljava/lang/String;)I
    .locals 3

    .line 132
    sget-object v0, Lcom/shabakaty/cinemana/features/MkvManifestStore;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    const-string v2, "cnm_mkv_manifest_v66"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->completedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 132
    :cond_1
    :goto_0
    return v1
.end method

.method public static expectedSubtitleCount(Ljava/lang/String;)I
    .locals 4

    .line 102
    sget-object v0, Lcom/shabakaty/cinemana/features/MkvManifestStore;->context:Landroid/content/Context;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    const-string v2, "cnm_mkv_plan_v54"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 102
    :cond_1
    :goto_0
    return v1
.end method

.method private static hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 40
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    array-length v4, v0

    if-ge v3, v4, :cond_0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02x"

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v2

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 44
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 18
    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    sput-object p0, Lcom/shabakaty/cinemana/features/MkvManifestStore;->context:Landroid/content/Context;

    .line 22
    :cond_1
    return-void
.end method

.method public static isNoSubPath(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->isNoSubToken(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNoSubToken(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->expectedSubtitleCount(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized isReadyForTask(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Z
    .locals 1

    const-class v0, Lcom/shabakaty/cinemana/features/MkvManifestStore;

    monitor-enter v0

    .line 107
    if-nez p0, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 108
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->isReadyToken(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 106
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isReadyToken(Ljava/lang/String;)Z
    .locals 9

    const-class v0, Lcom/shabakaty/cinemana/features/MkvManifestStore;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/features/MkvManifestStore;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 113
    :cond_0
    const-string v3, "cnm_mkv_manifest_v66"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->videoPathKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->videoStateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    const-string v5, "COMPLETED_VERIFIED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 123
    const-string v3, "COMPLETED_VERIFIED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    monitor-exit v0

    return v2

    .line 124
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->expectedSubtitleCount(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    if-gez v3, :cond_2

    monitor-exit v0

    return v2

    .line 126
    :cond_2
    const/4 v4, 0x1

    if-nez v3, :cond_3

    monitor-exit v0

    return v4

    .line 127
    :cond_3
    :try_start_2
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->terminalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    if-lt p0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    monitor-exit v0

    return v2

    .line 112
    :cond_5
    :goto_0
    monitor-exit v0

    return v2

    .line 111
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isSubtitle(Ljava/lang/String;)Z
    .locals 1

    .line 47
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 48
    const-string v0, ".srt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".ass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".ssa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".vtt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isVideo(Ljava/lang/String;)Z
    .locals 1

    .line 50
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized markState(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;)Z
    .locals 7

    const-class v0, Lcom/shabakaty/cinemana/features/MkvManifestStore;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/features/MkvManifestStore;->context:Landroid/content/Context;

    .line 73
    const/4 v2, 0x0

    if-eqz v1, :cond_a

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 74
    :cond_0
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    monitor-exit v0

    return v2

    .line 76
    :cond_1
    :try_start_1
    const-string v4, "cnm_mkv_manifest_v66"

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 77
    invoke-static {v3, p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->taskStateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, ""

    .line 79
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 80
    invoke-interface {v6, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 82
    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->videoPathKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v1, "COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 84
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v1, 0x400

    cmp-long v4, p0, v1

    if-ltz v4, :cond_3

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->videoStateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "COMPLETED_VERIFIED"

    invoke-interface {v6, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    :cond_3
    goto :goto_4

    .line 87
    :cond_4
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->isSubtitle(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 88
    const-string p0, "COMPLETED"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v4, 0x1

    if-nez p0, :cond_6

    const-string p0, "COMPLETED"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x1

    .line 89
    :goto_1
    const-string v5, "COMPLETED"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "COMPLETED"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v5, 0x1

    .line 90
    :goto_3
    if-nez p0, :cond_9

    if-eqz v5, :cond_9

    .line 91
    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->terminalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->terminalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/2addr p0, v4

    invoke-interface {v6, v5, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string p0, "COMPLETED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 93
    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->completedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->completedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p0, v4

    invoke-interface {v6, p1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    :cond_9
    :goto_4
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    invoke-static {v3}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->isReadyToken(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    .line 73
    :cond_a
    :goto_5
    monitor-exit v0

    return v2

    .line 71
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static norm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 35
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized registerTask(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 5

    const-class v0, Lcom/shabakaty/cinemana/features/MkvManifestStore;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/features/MkvManifestStore;->context:Landroid/content/Context;

    .line 59
    if-eqz v1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    monitor-exit v0

    return-void

    .line 62
    :cond_1
    :try_start_1
    const-string v3, "cnm_mkv_manifest_v66"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    invoke-static {v2, p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->taskStateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "REGISTERED"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->isVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->videoPathKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    monitor-exit v0

    return-void

    .line 59
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    .line 57
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static taskStateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "|task|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "|state"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static terminalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "|sub_terminal"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 25
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 26
    :cond_0
    const-string v1, "[cnm-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 27
    if-gez v1, :cond_1

    return-object v0

    .line 28
    :cond_1
    add-int/lit8 v1, v1, 0x5

    .line 29
    const/16 v2, 0x5d

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 30
    if-gt v2, v1, :cond_2

    return-object v0

    .line 31
    :cond_2
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static videoPathKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "|video_path"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static videoStateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "|video_state"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
