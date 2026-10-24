.class public Lcom/facebook/internal/logging/monitor/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# static fields
.field public static a:Z

.field public static final b:Lcom/facebook/internal/logging/LoggingManager;

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    sget-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->b:Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

    .line 3
    const-class v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->b:Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

    invoke-direct {v1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;-><init>()V

    sput-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->b:Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

    .line 6
    :cond_0
    sget-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->b:Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v0

    .line 7
    const-class v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;

    monitor-enter v0

    .line 8
    :try_start_1
    sget-object v2, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;->a:Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;

    if-nez v2, :cond_1

    .line 9
    new-instance v2, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;

    invoke-direct {v2}, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;-><init>()V

    sput-object v2, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;->a:Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;

    .line 10
    :cond_1
    sget-object v2, Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;->a:Lcom/facebook/internal/logging/monitor/MonitorLoggingStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    .line 11
    sget-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->c:Ljava/lang/Integer;

    .line 12
    const-class v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    monitor-enter v0

    .line 13
    :try_start_2
    sget-object v3, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->d:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    if-nez v3, :cond_2

    .line 14
    new-instance v3, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    invoke-direct {v3, v1, v2}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;-><init>(Lcom/facebook/internal/logging/LoggingCache;Lcom/facebook/internal/logging/LoggingStore;)V

    sput-object v3, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->d:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    .line 15
    :cond_2
    sget-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->d:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    .line 16
    sput-object v1, Lcom/facebook/internal/logging/monitor/Monitor;->b:Lcom/facebook/internal/logging/LoggingManager;

    .line 17
    const-class v0, Lcom/facebook/internal/logging/monitor/MetricsUtil;

    monitor-enter v0

    .line 18
    :try_start_3
    sget-object v1, Lcom/facebook/internal/logging/monitor/MetricsUtil;->a:Lcom/facebook/internal/logging/monitor/MetricsUtil;

    if-nez v1, :cond_3

    .line 19
    new-instance v1, Lcom/facebook/internal/logging/monitor/MetricsUtil;

    invoke-direct {v1}, Lcom/facebook/internal/logging/monitor/MetricsUtil;-><init>()V

    sput-object v1, Lcom/facebook/internal/logging/monitor/MetricsUtil;->a:Lcom/facebook/internal/logging/monitor/MetricsUtil;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :cond_3
    monitor-exit v0

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/logging/monitor/Monitor;->c:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-void

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 24
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v1

    .line 25
    monitor-exit v0

    throw v1

    :catchall_3
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method
