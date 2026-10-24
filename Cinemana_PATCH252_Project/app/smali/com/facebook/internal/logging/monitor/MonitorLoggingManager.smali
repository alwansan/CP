.class public Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;
.super Ljava/lang/Object;
.source "MonitorLoggingManager.java"

# interfaces
.implements Lcom/facebook/internal/logging/LoggingManager;


# static fields
.field public static final c:Ljava/lang/Integer;

.field public static d:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;


# instance fields
.field public a:Lcom/facebook/internal/logging/LoggingCache;

.field public b:Lcom/facebook/internal/logging/LoggingStore;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->c:Ljava/lang/Integer;

    .line 2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->e:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/internal/logging/LoggingCache;Lcom/facebook/internal/logging/LoggingStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->a:Lcom/facebook/internal/logging/LoggingCache;

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->a:Lcom/facebook/internal/logging/LoggingCache;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->b:Lcom/facebook/internal/logging/LoggingStore;

    if-nez p1, :cond_1

    .line 6
    iput-object p2, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->b:Lcom/facebook/internal/logging/LoggingStore;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->a:Lcom/facebook/internal/logging/LoggingCache;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 4
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 5
    sget-object v2, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Lcom/facebook/internal/Utility;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    :goto_0
    move-object v2, v0

    check-cast v2, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

    .line 8
    iget-object v3, v2, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->a:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    :goto_1
    sget-object v6, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->c:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 11
    iget-object v6, v2, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->a:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 12
    iget-object v6, v2, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->a:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/internal/logging/ExternalLog;

    .line 13
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14
    :cond_1
    sget-object v2, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 15
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 16
    sget-object v2, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 18
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/internal/logging/ExternalLog;

    .line 20
    invoke-interface {v6}, Lcom/facebook/internal/logging/ExternalLog;->y()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_3

    goto :goto_3

    .line 22
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v7, "device_os_version"

    .line 23
    sget-object v8, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->e:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "device_model"

    .line 24
    sget-object v8, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->f:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "unique_application_identifier"

    .line 25
    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "entries"

    .line 26
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 28
    sget-object v5, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    aput-object v5, v2, v4

    const-string v4, "%s/monitorings"

    .line 29
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v6, v2, v3, v6}, Lcom/facebook/GraphRequest;->m(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v6

    goto :goto_3

    :catch_0
    nop

    :goto_3
    if-eqz v6, :cond_0

    .line 31
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 32
    :cond_4
    :goto_4
    :try_start_1
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, v1}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequestBatch;->d()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
