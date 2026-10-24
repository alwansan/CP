.class public final Lcom/facebook/internal/instrument/InstrumentManager$1;
.super Ljava/lang/Object;
.source "InstrumentManager.java"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 11

    if-eqz p1, :cond_a

    .line 1
    sget-object p1, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->b:Ljava/lang/String;

    .line 2
    const-class p1, Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    monitor-enter p1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->a()V

    .line 5
    :cond_0
    sget-object v0, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->c:Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->b:Ljava/lang/String;

    const-string v1, "Already enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p1

    goto :goto_0

    .line 8
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    invoke-direct {v1, v0}, Lcom/facebook/internal/instrument/crashreport/CrashHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-object v1, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->c:Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    .line 10
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p1

    .line 12
    :goto_0
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->F:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {p1}, Lcom/facebook/internal/FeatureManager;->c(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    .line 13
    sput-boolean p1, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->a:Z

    .line 14
    invoke-static {}, Lcom/facebook/FacebookSdk;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    invoke-static {}, Lcom/facebook/internal/Utility;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->b()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/io/File;

    goto :goto_1

    .line 17
    :cond_3
    new-instance v2, Lcom/facebook/internal/instrument/InstrumentUtility$1;

    invoke-direct {v2}, Lcom/facebook/internal/instrument/InstrumentUtility$1;-><init>()V

    .line 18
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-array v0, v1, [Ljava/io/File;

    .line 19
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    .line 21
    new-instance v6, Lcom/facebook/internal/instrument/InstrumentData;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/io/File;Lcom/facebook/internal/instrument/InstrumentData$1;)V

    .line 22
    invoke-virtual {v6}, Lcom/facebook/internal/instrument/InstrumentData;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 23
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v8, "crash_shield"

    .line 24
    invoke-virtual {v6}, Lcom/facebook/internal/instrument/InstrumentData;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "%s/instruments"

    new-array v9, p1, [Ljava/lang/Object;

    .line 25
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 26
    sget-object v10, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    aput-object v10, v9, v1

    .line 27
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/facebook/internal/instrument/ExceptionAnalyzer$1;

    invoke-direct {v9, v6}, Lcom/facebook/internal/instrument/ExceptionAnalyzer$1;-><init>(Lcom/facebook/internal/instrument/InstrumentData;)V

    .line 28
    invoke-static {v7, v8, v5, v9}, Lcom/facebook/GraphRequest;->m(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v5

    .line 29
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 30
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 31
    :cond_7
    new-instance p1, Lcom/facebook/GraphRequestBatch;

    invoke-direct {p1, v2}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    .line 32
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->d()Lcom/facebook/GraphRequestAsyncTask;

    .line 33
    :cond_8
    :goto_3
    sget p1, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->a:I

    .line 34
    :cond_9
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->G:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {p1}, Lcom/facebook/internal/FeatureManager;->c(Lcom/facebook/internal/FeatureManager$Feature;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p1

    throw v0

    :cond_a
    :goto_4
    return-void
.end method
