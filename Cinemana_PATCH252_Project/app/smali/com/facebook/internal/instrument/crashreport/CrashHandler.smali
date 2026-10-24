.class public Lcom/facebook/internal/instrument/crashreport/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final b:Ljava/lang/String;

.field public static c:Lcom/facebook/internal/instrument/crashreport/CrashHandler;


# instance fields
.field public final a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/internal/instrument/crashreport/CrashHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static a()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/facebook/internal/Utility;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentUtility;->b()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/io/File;

    goto :goto_0

    .line 3
    :cond_1
    new-instance v2, Lcom/facebook/internal/instrument/InstrumentUtility$2;

    invoke-direct {v2}, Lcom/facebook/internal/instrument/InstrumentUtility$2;-><init>()V

    .line 4
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-array v0, v1, [Ljava/io/File;

    .line 5
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 7
    new-instance v6, Lcom/facebook/internal/instrument/InstrumentData;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/io/File;Lcom/facebook/internal/instrument/InstrumentData$1;)V

    .line 8
    invoke-virtual {v6}, Lcom/facebook/internal/instrument/InstrumentData;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_4
    new-instance v0, Lcom/facebook/internal/instrument/crashreport/CrashHandler$1;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$1;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 12
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    const/4 v3, 0x5

    if-ge v1, v3, :cond_5

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_5
    new-instance v1, Lcom/facebook/internal/instrument/crashreport/CrashHandler$2;

    invoke-direct {v1, v2}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$2;-><init>(Ljava/util/ArrayList;)V

    const-string v2, "crash_reports"

    invoke-static {v2, v0, v1}, Lcom/facebook/internal/instrument/InstrumentUtility;->d(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$Callback;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 16

    move-object/from16 v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    move-object v3, v0

    move-object v4, v2

    :goto_0
    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_3

    .line 1
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 2
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.facebook"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_d

    .line 4
    sget-object v3, Lcom/facebook/internal/FeatureManager$Feature;->s:Lcom/facebook/internal/FeatureManager$Feature;

    sget-boolean v4, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->a:Z

    if-eqz v4, :cond_b

    .line 5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_9

    aget-object v8, v5, v7

    .line 7
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/facebook/internal/FeatureManager;->a:Ljava/util/Map;

    .line 8
    const-class v9, Lcom/facebook/internal/FeatureManager;

    monitor-enter v9

    .line 9
    :try_start_0
    sget-object v10, Lcom/facebook/internal/FeatureManager;->a:Ljava/util/Map;

    move-object v11, v10

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_4

    .line 10
    monitor-exit v9

    goto/16 :goto_5

    .line 11
    :cond_4
    :try_start_1
    sget-object v11, Lcom/facebook/internal/FeatureManager$Feature;->x:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v12, "com.facebook.appevents.aam."

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    move-object v13, v10

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v11, Lcom/facebook/internal/FeatureManager$Feature;->v:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v12, "com.facebook.appevents.codeless."

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    move-object v13, v10

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v11, Lcom/facebook/internal/FeatureManager$Feature;->H:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v12, "com.facebook.internal.instrument.errorreport."

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    move-object v13, v10

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v11, Lcom/facebook/internal/FeatureManager$Feature;->y:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v12, "com.facebook.appevents.ml."

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    move-object v13, v10

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v11, Lcom/facebook/internal/FeatureManager$Feature;->z:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v12, "com.facebook.appevents.suggestedevents."

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    move-object v13, v10

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v11, Lcom/facebook/internal/FeatureManager$Feature;->w:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v12, "com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    move-object v13, v10

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v11, Lcom/facebook/internal/FeatureManager$Feature;->A:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v12, "com.facebook.appevents.integrity.IntegrityManager"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    move-object v13, v10

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v11, Lcom/facebook/internal/FeatureManager$Feature;->C:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v12, "com.facebook.appevents.eventdeactivation."

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    move-object v13, v10

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v11, Lcom/facebook/internal/FeatureManager$Feature;->I:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v12, "com.facebook.internal.logging.monitor"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    move-object v13, v10

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit v9

    .line 21
    :goto_5
    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_5

    aget-object v14, v11, v13

    .line 23
    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 24
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/internal/FeatureManager$Feature;

    goto :goto_7

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_7
    move-object v8, v3

    :goto_7
    if-eq v8, v3, :cond_8

    .line 25
    sget-object v9, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 26
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 27
    sget-object v9, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    const-string v10, "com.facebook.internal.FEATURE_MANAGER"

    .line 28
    invoke-virtual {v9, v10, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 29
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 30
    invoke-virtual {v8}, Lcom/facebook/internal/FeatureManager$Feature;->h()Ljava/lang/String;

    move-result-object v10

    const-string v11, "8.1.0"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 31
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    invoke-virtual {v8}, Lcom/facebook/internal/FeatureManager$Feature;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v9

    throw v0

    .line 34
    :cond_9
    invoke-static {}, Lcom/facebook/FacebookSdk;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 35
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 36
    new-instance v3, Lcom/facebook/internal/instrument/InstrumentData;

    invoke-direct {v3, v1, v2}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Lorg/json/JSONArray;Lcom/facebook/internal/instrument/InstrumentData$1;)V

    .line 37
    invoke-virtual {v3}, Lcom/facebook/internal/instrument/InstrumentData;->a()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_8

    .line 38
    :cond_a
    iget-object v1, v3, Lcom/facebook/internal/instrument/InstrumentData;->a:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/facebook/internal/instrument/InstrumentData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/internal/instrument/InstrumentUtility;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_b
    :goto_8
    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->t:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 40
    new-instance v3, Lcom/facebook/internal/instrument/InstrumentData;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;Lcom/facebook/internal/instrument/InstrumentData$1;)V

    .line 41
    invoke-virtual {v3}, Lcom/facebook/internal/instrument/InstrumentData;->a()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_9

    .line 42
    :cond_c
    iget-object v1, v3, Lcom/facebook/internal/instrument/InstrumentData;->a:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/facebook/internal/instrument/InstrumentData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/internal/instrument/InstrumentUtility;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_9
    move-object/from16 v1, p0

    .line 43
    iget-object v2, v1, Lcom/facebook/internal/instrument/crashreport/CrashHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_e

    move-object/from16 v3, p1

    .line 44
    invoke-interface {v2, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method
