.class public Lcom/google/firebase/perf/session/gauges/GaugeManager;
.super Ljava/lang/Object;
.source "GaugeManager.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC:J = 0x14L

.field private static final INVALID_GAUGE_COLLECTION_FREQUENCY:J = -0x1L

.field private static final TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS:J = 0x14L

.field private static final instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;

.field private static final logger:Lcom/shabakaty/downloader/i7;


# instance fields
.field private applicationProcessState:Lcom/shabakaty/downloader/oc;

.field private final configResolver:Lcom/shabakaty/downloader/w90;

.field private final cpuGaugeCollector:Lcom/shabakaty/downloader/df0;

.field private gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

.field private final gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private gaugeMetadataManager:Lcom/shabakaty/downloader/qo1;

.field private final memoryGaugeCollector:Lcom/shabakaty/downloader/tr2;

.field private sessionId:Ljava/lang/String;

.field private final transportManager:Lcom/shabakaty/downloader/wq4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/i7;->d()Lcom/shabakaty/downloader/i7;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lcom/shabakaty/downloader/i7;

    .line 2
    new-instance v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    invoke-direct {v0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/wq4;->J:Lcom/shabakaty/downloader/wq4;

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/w90;->e()Lcom/shabakaty/downloader/w90;

    move-result-object v3

    const/4 v4, 0x0

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/df0;->i:Lcom/shabakaty/downloader/df0;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/df0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/df0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/df0;->i:Lcom/shabakaty/downloader/df0;

    .line 6
    :cond_0
    sget-object v5, Lcom/shabakaty/downloader/df0;->i:Lcom/shabakaty/downloader/df0;

    .line 7
    sget-object v6, Lcom/shabakaty/downloader/tr2;->g:Lcom/shabakaty/downloader/tr2;

    move-object v0, p0

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/perf/session/gauges/GaugeManager;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/shabakaty/downloader/wq4;Lcom/shabakaty/downloader/w90;Lcom/shabakaty/downloader/qo1;Lcom/shabakaty/downloader/df0;Lcom/shabakaty/downloader/tr2;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/shabakaty/downloader/wq4;Lcom/shabakaty/downloader/w90;Lcom/shabakaty/downloader/qo1;Lcom/shabakaty/downloader/df0;Lcom/shabakaty/downloader/tr2;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/oc;->s:Lcom/shabakaty/downloader/oc;

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lcom/shabakaty/downloader/oc;

    .line 13
    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Lcom/shabakaty/downloader/wq4;

    .line 15
    iput-object p3, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Lcom/shabakaty/downloader/w90;

    .line 16
    iput-object p4, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lcom/shabakaty/downloader/qo1;

    .line 17
    iput-object p5, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lcom/shabakaty/downloader/df0;

    .line 18
    iput-object p6, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lcom/shabakaty/downloader/tr2;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lcom/shabakaty/downloader/oc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->lambda$startCollectingGauges$0(Ljava/lang/String;Lcom/shabakaty/downloader/oc;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lcom/shabakaty/downloader/oc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->lambda$stopCollectingGauges$1(Ljava/lang/String;Lcom/shabakaty/downloader/oc;)V

    return-void
.end method

.method private static collectGaugeMetricOnce(Lcom/shabakaty/downloader/df0;Lcom/shabakaty/downloader/tr2;Lcom/shabakaty/downloader/pn4;)V
    .locals 6

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/df0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/shabakaty/downloader/cf0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, v4}, Lcom/shabakaty/downloader/cf0;-><init>(Lcom/shabakaty/downloader/df0;Lcom/shabakaty/downloader/pn4;I)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 4
    :try_start_1
    sget-object v3, Lcom/shabakaty/downloader/df0;->g:Lcom/shabakaty/downloader/i7;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to collect Cpu Metric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/i7;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    monitor-exit p0

    .line 6
    monitor-enter p1

    .line 7
    :try_start_2
    iget-object p0, p1, Lcom/shabakaty/downloader/tr2;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/shabakaty/downloader/sr2;

    const/4 v3, 0x1

    invoke-direct {v2, p1, p2, v3}, Lcom/shabakaty/downloader/sr2;-><init>(Lcom/shabakaty/downloader/tr2;Lcom/shabakaty/downloader/pn4;I)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {p0, v2, v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 9
    :try_start_3
    sget-object p2, Lcom/shabakaty/downloader/tr2;->f:Lcom/shabakaty/downloader/i7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to collect Memory Metric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/i7;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1

    throw p0

    .line 11
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method private getCpuGaugeCollectionFrequencyMs(Lcom/shabakaty/downloader/oc;)J
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    move-wide v5, v0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Lcom/shabakaty/downloader/w90;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v5, Lcom/shabakaty/downloader/ka0;

    monitor-enter v5

    .line 4
    :try_start_0
    sget-object v6, Lcom/shabakaty/downloader/ka0;->a:Lcom/shabakaty/downloader/ka0;

    if-nez v6, :cond_1

    .line 5
    new-instance v6, Lcom/shabakaty/downloader/ka0;

    invoke-direct {v6}, Lcom/shabakaty/downloader/ka0;-><init>()V

    sput-object v6, Lcom/shabakaty/downloader/ka0;->a:Lcom/shabakaty/downloader/ka0;

    .line 6
    :cond_1
    sget-object v6, Lcom/shabakaty/downloader/ka0;->a:Lcom/shabakaty/downloader/ka0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 7
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/w90;->h(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object v5, p1, Lcom/shabakaty/downloader/w90;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-string v7, "fpr_session_gauge_cpu_capture_frequency_bg_ms"

    invoke-virtual {v5, v7}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    const-string v6, "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs"

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Lcom/shabakaty/downloader/v90;->a(Ljava/lang/Long;Lcom/shabakaty/downloader/ms0;Ljava/lang/String;Lcom/shabakaty/downloader/d83;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/w90;->c(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 15
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 17
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v5

    throw p1

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Lcom/shabakaty/downloader/w90;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-class v5, Lcom/shabakaty/downloader/la0;

    monitor-enter v5

    .line 22
    :try_start_1
    sget-object v6, Lcom/shabakaty/downloader/la0;->a:Lcom/shabakaty/downloader/la0;

    if-nez v6, :cond_6

    .line 23
    new-instance v6, Lcom/shabakaty/downloader/la0;

    invoke-direct {v6}, Lcom/shabakaty/downloader/la0;-><init>()V

    sput-object v6, Lcom/shabakaty/downloader/la0;->a:Lcom/shabakaty/downloader/la0;

    .line 24
    :cond_6
    sget-object v6, Lcom/shabakaty/downloader/la0;->a:Lcom/shabakaty/downloader/la0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 25
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/w90;->h(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 27
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 28
    :cond_7
    iget-object v5, p1, Lcom/shabakaty/downloader/w90;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-string v7, "fpr_session_gauge_cpu_capture_frequency_fg_ms"

    invoke-virtual {v5, v7}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 29
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 30
    iget-object p1, p1, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    const-string v6, "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs"

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Lcom/shabakaty/downloader/v90;->a(Ljava/lang/Long;Lcom/shabakaty/downloader/ms0;Ljava/lang/String;Lcom/shabakaty/downloader/d83;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 32
    :cond_8
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/w90;->c(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 33
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_9
    const-wide/16 v5, 0x64

    .line 35
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 37
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/df0;->g:Lcom/shabakaty/downloader/i7;

    cmp-long p1, v5, v2

    if-gtz p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_b

    return-wide v0

    :cond_b
    return-wide v5

    :catchall_1
    move-exception p1

    .line 38
    monitor-exit v5

    throw p1
.end method

.method private getGaugeMetadata()Lcom/shabakaty/downloader/po1;
    .locals 5

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/po1;->H()Lcom/shabakaty/downloader/po1$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lcom/shabakaty/downloader/qo1;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/qo1;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v2, Lcom/shabakaty/downloader/po1;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/po1;->B(Lcom/shabakaty/downloader/po1;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lcom/shabakaty/downloader/qo1;

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/pd4;->u:Lcom/shabakaty/downloader/pd4;

    iget-object v1, v1, Lcom/shabakaty/downloader/qo1;->c:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/pd4;->f(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/zy4;->b(J)I

    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 8
    iget-object v3, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v3, Lcom/shabakaty/downloader/po1;

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/po1;->E(Lcom/shabakaty/downloader/po1;I)V

    .line 9
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lcom/shabakaty/downloader/qo1;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/qo1;->a:Ljava/lang/Runtime;

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/pd4;->f(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/zy4;->b(J)I

    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 12
    iget-object v2, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v2, Lcom/shabakaty/downloader/po1;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/po1;->C(Lcom/shabakaty/downloader/po1;I)V

    .line 13
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lcom/shabakaty/downloader/qo1;

    .line 14
    sget-object v2, Lcom/shabakaty/downloader/pd4;->s:Lcom/shabakaty/downloader/pd4;

    iget-object v1, v1, Lcom/shabakaty/downloader/qo1;->b:Landroid/app/ActivityManager;

    .line 15
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/pd4;->f(J)J

    move-result-wide v1

    .line 16
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/zy4;->b(J)I

    move-result v1

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 18
    iget-object v2, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v2, Lcom/shabakaty/downloader/po1;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/po1;->D(Lcom/shabakaty/downloader/po1;I)V

    .line 19
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->n()Lcom/shabakaty/downloader/qp1;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/po1;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMemoryGaugeCollectionFrequencyMs(Lcom/shabakaty/downloader/oc;)J
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    move-wide v5, v0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Lcom/shabakaty/downloader/w90;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v5, Lcom/shabakaty/downloader/na0;

    monitor-enter v5

    .line 5
    :try_start_0
    sget-object v6, Lcom/shabakaty/downloader/na0;->a:Lcom/shabakaty/downloader/na0;

    if-nez v6, :cond_1

    .line 6
    new-instance v6, Lcom/shabakaty/downloader/na0;

    invoke-direct {v6}, Lcom/shabakaty/downloader/na0;-><init>()V

    sput-object v6, Lcom/shabakaty/downloader/na0;->a:Lcom/shabakaty/downloader/na0;

    .line 7
    :cond_1
    sget-object v6, Lcom/shabakaty/downloader/na0;->a:Lcom/shabakaty/downloader/na0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 8
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/w90;->h(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 11
    :cond_2
    iget-object v5, p1, Lcom/shabakaty/downloader/w90;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-string v7, "fpr_session_gauge_memory_capture_frequency_bg_ms"

    invoke-virtual {v5, v7}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    const-string v6, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs"

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Lcom/shabakaty/downloader/v90;->a(Ljava/lang/Long;Lcom/shabakaty/downloader/ms0;Ljava/lang/String;Lcom/shabakaty/downloader/d83;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/w90;->c(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 18
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v5

    throw p1

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Lcom/shabakaty/downloader/w90;

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-class v5, Lcom/shabakaty/downloader/oa0;

    monitor-enter v5

    .line 24
    :try_start_1
    sget-object v6, Lcom/shabakaty/downloader/oa0;->a:Lcom/shabakaty/downloader/oa0;

    if-nez v6, :cond_6

    .line 25
    new-instance v6, Lcom/shabakaty/downloader/oa0;

    invoke-direct {v6}, Lcom/shabakaty/downloader/oa0;-><init>()V

    sput-object v6, Lcom/shabakaty/downloader/oa0;->a:Lcom/shabakaty/downloader/oa0;

    .line 26
    :cond_6
    sget-object v6, Lcom/shabakaty/downloader/oa0;->a:Lcom/shabakaty/downloader/oa0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 27
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/w90;->h(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 29
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 30
    :cond_7
    iget-object v5, p1, Lcom/shabakaty/downloader/w90;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-string v7, "fpr_session_gauge_memory_capture_frequency_fg_ms"

    invoke-virtual {v5, v7}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 32
    iget-object p1, p1, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    const-string v6, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs"

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Lcom/shabakaty/downloader/v90;->a(Ljava/lang/Long;Lcom/shabakaty/downloader/ms0;Ljava/lang/String;Lcom/shabakaty/downloader/d83;)Ljava/lang/Object;

    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 34
    :cond_8
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/w90;->c(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v5

    .line 35
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/shabakaty/downloader/w90;->n(J)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 36
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_9
    const-wide/16 v5, 0x64

    .line 37
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 39
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/tr2;->f:Lcom/shabakaty/downloader/i7;

    cmp-long p1, v5, v2

    if-gtz p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_b

    return-wide v0

    :cond_b
    return-wide v5

    :catchall_1
    move-exception p1

    .line 40
    monitor-exit v5

    throw p1
.end method

.method private synthetic lambda$startCollectingGauges$0(Ljava/lang/String;Lcom/shabakaty/downloader/oc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->syncFlush(Ljava/lang/String;Lcom/shabakaty/downloader/oc;)V

    return-void
.end method

.method private synthetic lambda$stopCollectingGauges$1(Ljava/lang/String;Lcom/shabakaty/downloader/oc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->syncFlush(Ljava/lang/String;Lcom/shabakaty/downloader/oc;)V

    return-void
.end method

.method private startCollectingCpuMetrics(JLcom/shabakaty/downloader/pn4;)Z
    .locals 10

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    .line 1
    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lcom/shabakaty/downloader/i7;

    .line 2
    iget-boolean p2, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FirebasePerformance"

    const-string p2, "Invalid Cpu Metrics collection frequency. Did not collect Cpu Metrics."

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lcom/shabakaty/downloader/df0;

    .line 6
    iget-wide v4, v3, Lcom/shabakaty/downloader/df0;->d:J

    const/4 v6, 0x1

    cmp-long v7, v4, v0

    if-eqz v7, :cond_6

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v4, p1, v7

    if-gtz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    iget-object v4, v3, Lcom/shabakaty/downloader/df0;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_5

    .line 8
    iget-wide v7, v3, Lcom/shabakaty/downloader/df0;->f:J

    cmp-long v5, v7, p1

    if-eqz v5, :cond_6

    .line 9
    invoke-interface {v4, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v2, 0x0

    .line 10
    iput-object v2, v3, Lcom/shabakaty/downloader/df0;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    iput-wide v0, v3, Lcom/shabakaty/downloader/df0;->f:J

    .line 12
    invoke-virtual {v3, p1, p2, p3}, Lcom/shabakaty/downloader/df0;->a(JLcom/shabakaty/downloader/pn4;)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {v3, p1, p2, p3}, Lcom/shabakaty/downloader/df0;->a(JLcom/shabakaty/downloader/pn4;)V

    :cond_6
    :goto_1
    return v6
.end method

.method private startCollectingGauges(Lcom/shabakaty/downloader/oc;Lcom/shabakaty/downloader/pn4;)J
    .locals 7

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getCpuGaugeCollectionFrequencyMs(Lcom/shabakaty/downloader/oc;)J

    move-result-wide v0

    .line 16
    invoke-direct {p0, v0, v1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingCpuMetrics(JLcom/shabakaty/downloader/pn4;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v3

    .line 17
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getMemoryGaugeCollectionFrequencyMs(Lcom/shabakaty/downloader/oc;)J

    move-result-wide v5

    .line 18
    invoke-direct {p0, v5, v6, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingMemoryMetrics(JLcom/shabakaty/downloader/pn4;)Z

    move-result p1

    if-eqz p1, :cond_2

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    move-wide v0, v5

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v0, p1

    :cond_2
    :goto_1
    return-wide v0
.end method

.method private startCollectingMemoryMetrics(JLcom/shabakaty/downloader/pn4;)Z
    .locals 9

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    .line 1
    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lcom/shabakaty/downloader/i7;

    .line 2
    iget-boolean p2, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FirebasePerformance"

    const-string p2, "Invalid Memory Metrics collection frequency. Did not collect Memory Metrics."

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lcom/shabakaty/downloader/tr2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    cmp-long v7, p1, v4

    if-gtz v7, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget-object v4, v3, Lcom/shabakaty/downloader/tr2;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_4

    .line 7
    iget-wide v7, v3, Lcom/shabakaty/downloader/tr2;->e:J

    cmp-long v5, v7, p1

    if-eqz v5, :cond_5

    .line 8
    invoke-interface {v4, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v2, 0x0

    .line 9
    iput-object v2, v3, Lcom/shabakaty/downloader/tr2;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 10
    iput-wide v0, v3, Lcom/shabakaty/downloader/tr2;->e:J

    .line 11
    invoke-virtual {v3, p1, p2, p3}, Lcom/shabakaty/downloader/tr2;->a(JLcom/shabakaty/downloader/pn4;)V

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v3, p1, p2, p3}, Lcom/shabakaty/downloader/tr2;->a(JLcom/shabakaty/downloader/pn4;)V

    :cond_5
    :goto_1
    return v6
.end method

.method private syncFlush(Ljava/lang/String;Lcom/shabakaty/downloader/oc;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/ro1;->L()Lcom/shabakaty/downloader/ro1$b;

    move-result-object v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lcom/shabakaty/downloader/df0;

    iget-object v1, v1, Lcom/shabakaty/downloader/df0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lcom/shabakaty/downloader/df0;

    iget-object v1, v1, Lcom/shabakaty/downloader/df0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ef0;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v2, Lcom/shabakaty/downloader/ro1;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/ro1;->E(Lcom/shabakaty/downloader/ro1;Lcom/shabakaty/downloader/ef0;)V

    goto :goto_0

    .line 6
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lcom/shabakaty/downloader/tr2;

    iget-object v1, v1, Lcom/shabakaty/downloader/tr2;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lcom/shabakaty/downloader/tr2;

    iget-object v1, v1, Lcom/shabakaty/downloader/tr2;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/j7;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 9
    iget-object v2, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v2, Lcom/shabakaty/downloader/ro1;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/ro1;->C(Lcom/shabakaty/downloader/ro1;Lcom/shabakaty/downloader/j7;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 11
    iget-object v1, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v1, Lcom/shabakaty/downloader/ro1;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/ro1;->B(Lcom/shabakaty/downloader/ro1;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Lcom/shabakaty/downloader/wq4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->n()Lcom/shabakaty/downloader/qp1;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ro1;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/wq4;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/shabakaty/downloader/pr;

    invoke-direct {v2, p1, v0, p2}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/wq4;Lcom/shabakaty/downloader/ro1;Lcom/shabakaty/downloader/oc;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public collectGaugeMetricOnce(Lcom/shabakaty/downloader/pn4;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lcom/shabakaty/downloader/df0;

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lcom/shabakaty/downloader/tr2;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Lcom/shabakaty/downloader/df0;Lcom/shabakaty/downloader/tr2;Lcom/shabakaty/downloader/pn4;)V

    return-void
.end method

.method public logGaugeMetadata(Ljava/lang/String;Lcom/shabakaty/downloader/oc;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lcom/shabakaty/downloader/qo1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/ro1;->L()Lcom/shabakaty/downloader/ro1$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v1, Lcom/shabakaty/downloader/ro1;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/ro1;->B(Lcom/shabakaty/downloader/ro1;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getGaugeMetadata()Lcom/shabakaty/downloader/po1;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v1, Lcom/shabakaty/downloader/ro1;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/ro1;->D(Lcom/shabakaty/downloader/ro1;Lcom/shabakaty/downloader/po1;)V

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->n()Lcom/shabakaty/downloader/qp1;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ro1;

    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Lcom/shabakaty/downloader/wq4;

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/wq4;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/shabakaty/downloader/pr;

    invoke-direct {v2, v0, p1, p2}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/wq4;Lcom/shabakaty/downloader/ro1;Lcom/shabakaty/downloader/oc;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qo1;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/qo1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lcom/shabakaty/downloader/qo1;

    return-void
.end method

.method public startCollectingGauges(Lcom/shabakaty/downloader/ub3;Lcom/shabakaty/downloader/oc;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->stopCollectingGauges()V

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/ub3;->s:Lcom/shabakaty/downloader/pn4;

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingGauges(Lcom/shabakaty/downloader/oc;Lcom/shabakaty/downloader/pn4;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 5
    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lcom/shabakaty/downloader/i7;

    .line 6
    iget-boolean p2, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FirebasePerformance"

    const-string p2, "Invalid gauge collection frequency. Unable to start collecting Gauges."

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 9
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/downloader/ub3;->r:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lcom/shabakaty/downloader/oc;

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/shabakaty/downloader/oo1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/shabakaty/downloader/oo1;-><init>(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lcom/shabakaty/downloader/oc;I)V

    const-wide/16 p1, 0x14

    mul-long v6, v0, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v6

    .line 13
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    sget-object p2, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lcom/shabakaty/downloader/i7;

    const-string v0, "Unable to start collecting Gauges: "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/i7;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopCollectingGauges()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lcom/shabakaty/downloader/oc;

    .line 3
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lcom/shabakaty/downloader/df0;

    .line 4
    iget-object v3, v2, Lcom/shabakaty/downloader/df0;->e:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v3, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 6
    iput-object v6, v2, Lcom/shabakaty/downloader/df0;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    iput-wide v4, v2, Lcom/shabakaty/downloader/df0;->f:J

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lcom/shabakaty/downloader/tr2;

    .line 9
    iget-object v3, v2, Lcom/shabakaty/downloader/tr2;->d:Ljava/util/concurrent/ScheduledFuture;

    if-nez v3, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v3, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 11
    iput-object v6, v2, Lcom/shabakaty/downloader/tr2;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    iput-wide v4, v2, Lcom/shabakaty/downloader/tr2;->e:J

    .line 13
    :goto_1
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_3

    .line 14
    invoke-interface {v2, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/shabakaty/downloader/oo1;

    invoke-direct {v3, p0, v0, v1, v7}, Lcom/shabakaty/downloader/oo1;-><init>(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lcom/shabakaty/downloader/oc;I)V

    const-wide/16 v0, 0x14

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 17
    iput-object v6, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/shabakaty/downloader/oc;->s:Lcom/shabakaty/downloader/oc;

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lcom/shabakaty/downloader/oc;

    return-void
.end method
