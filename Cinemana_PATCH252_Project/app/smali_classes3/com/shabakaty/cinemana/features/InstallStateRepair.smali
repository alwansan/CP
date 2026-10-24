.class public final Lcom/shabakaty/cinemana/features/InstallStateRepair;
.super Ljava/lang/Object;
.source "InstallStateRepair.java"


# static fields
.field private static final KEY_INSTALL_TIME:Ljava/lang/String; = "package_first_install_time"

.field private static final PREFS:Ljava/lang/String; = "cnm_install_repair"

.field private static final TAG:Ljava/lang/String; = "CNM_INSTALL_REPAIR"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFirstInstallTime(Landroid/content/Context;)J
    .locals 2

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 101
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static run(Landroid/content/Context;)V
    .locals 15

    .line 31
    const-string v0, "package_first_install_time"

    const-string v1, "CNM_INSTALL_REPAIR"

    if-nez p0, :cond_0

    return-void

    .line 33
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 34
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v2

    .line 36
    :goto_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/InstallStateRepair;->getFirstInstallTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 37
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    return-void

    .line 39
    :cond_2
    const-string v6, "cnm_install_repair"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 40
    const-wide/16 v8, -0x1

    invoke-interface {p0, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 41
    cmp-long v6, v8, v2

    const/4 v10, 0x1

    if-eqz v6, :cond_3

    move v6, v10

    goto :goto_1

    :cond_3
    move v6, v7

    .line 42
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "firstInstall="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " previous="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " newInstall="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-nez v6, :cond_4

    return-void

    .line 49
    :cond_4
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    .line 50
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Cinemana"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "work"

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 54
    :cond_5
    nop

    .line 55
    nop

    .line 56
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 58
    move p0, v7

    move v2, p0

    move v3, v2

    .line 59
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    const/16 v6, 0x1388

    if-ge p0, v6, :cond_d

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 61
    add-int/lit8 p0, p0, 0x1

    .line 62
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 63
    if-nez v6, :cond_6

    goto :goto_2

    .line 64
    :cond_6
    array-length v8, v6

    move v9, v7

    :goto_3
    if-ge v9, v8, :cond_c

    aget-object v11, v6, v9

    .line 65
    if-nez v11, :cond_7

    goto :goto_4

    .line 66
    :cond_7
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 67
    const-string v12, "log"

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v0, v11}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_4

    .line 70
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 71
    const-string v13, ".mkv"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v11, v13, v4

    if-lez v11, :cond_9

    move v2, v10

    .line 72
    :cond_9
    const-string v11, ".temp"

    invoke-virtual {v12, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, ".part"

    invoke-virtual {v12, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_b

    :cond_a
    move v3, v10

    .line 64
    :cond_b
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 74
    :cond_c
    goto :goto_2

    .line 78
    :cond_d
    if-eqz v2, :cond_f

    if-eqz v3, :cond_e

    goto :goto_6

    .line 84
    :cond_e
    :try_start_1
    const-string p0, "com.liulishuo.filedownloader.FileDownloadServiceProxy"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 86
    const-string v0, "getImpl"

    new-array v2, v7, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    const-string v2, "clearAllTaskData"

    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string p0, "FILEDOWNLOADER_TASK_CACHE_CLEARED retainedExternalMkv=true"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    goto :goto_5

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    :try_start_2
    const-string v0, "FILEDOWNLOADER_TASK_CACHE_CLEAR_FAILED"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :goto_5
    goto :goto_7

    .line 79
    :cond_f
    :goto_6
    const-string p0, "no stale-MKV reinstall state detected"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    return-void

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    const-string v0, "INSTALL_REPAIR_FAILED"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :goto_7
    return-void
.end method
