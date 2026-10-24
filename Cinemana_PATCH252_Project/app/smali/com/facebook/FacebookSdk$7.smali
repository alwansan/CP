.class public final Lcom/facebook/FacebookSdk$7;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->j(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 7

    if-eqz p1, :cond_5

    .line 1
    sget-object p1, Lcom/facebook/internal/logging/monitor/MonitorManager;->a:Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;

    .line 2
    sget-object p1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 3
    invoke-static {}, Lcom/facebook/UserSettingsManager;->b()V

    .line 4
    sget-object p1, Lcom/facebook/UserSettingsManager;->g:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-virtual {p1}, Lcom/facebook/UserSettingsManager$UserSetting;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 6
    sget-object p1, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/facebook/internal/FetchedAppSettingsManager;->b(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 8
    iget-boolean p1, p1, Lcom/facebook/internal/FetchedAppSettings;->k:Z

    if-eqz p1, :cond_5

    .line 9
    sget-object p1, Lcom/facebook/internal/logging/monitor/MonitorManager;->a:Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;

    check-cast p1, Lcom/facebook/internal/logging/monitor/MonitorManager$1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-boolean p1, Lcom/facebook/internal/logging/monitor/Monitor;->a:Z

    if-eqz p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 p1, 0x1

    .line 11
    sput-boolean p1, Lcom/facebook/internal/logging/monitor/Monitor;->a:Z

    .line 12
    invoke-static {}, Lcom/facebook/FacebookSdk;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/facebook/internal/logging/monitor/Monitor$1;

    invoke-direct {v0}, Lcom/facebook/internal/logging/monitor/Monitor$1;-><init>()V

    .line 13
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    sget-object p1, Lcom/facebook/internal/logging/monitor/Monitor;->b:Lcom/facebook/internal/logging/LoggingManager;

    check-cast p1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    .line 15
    iget-object v0, p1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->b:Lcom/facebook/internal/logging/LoggingStore;

    check-cast v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "facebooksdk.monitoring.persistedlogs"

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 18
    sget-object v2, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    const/4 v3, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 20
    new-instance v5, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    :catch_0
    :try_start_3
    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-object v1, v3

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, v5

    goto :goto_0

    :catch_2
    move-object v3, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v3, :cond_2

    .line 24
    :try_start_4
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 25
    :catch_3
    :cond_2
    :try_start_5
    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 26
    :catch_4
    throw p1

    :catch_5
    nop

    :goto_1
    if-eqz v3, :cond_3

    .line 27
    :try_start_6
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 28
    :catch_6
    :cond_3
    :try_start_7
    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_2

    :catch_7
    nop

    .line 29
    :goto_2
    iget-object v0, p1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->a:Lcom/facebook/internal/logging/LoggingCache;

    check-cast v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

    if-eqz v1, :cond_4

    .line 30
    iget-object v2, v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->a:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 31
    :cond_4
    iget-object v0, v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    sget-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    invoke-virtual {p1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->a()V

    :cond_5
    :goto_3
    return-void
.end method
