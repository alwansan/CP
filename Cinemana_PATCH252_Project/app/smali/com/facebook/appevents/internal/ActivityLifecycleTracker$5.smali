.class public final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:J

.field public final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->r:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->r:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 3
    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 4
    :cond_0
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 5
    iget-wide v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->r:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 6
    iput-object v1, v0, Lcom/facebook/appevents/internal/SessionInfo;->b:Ljava/lang/Long;

    .line 7
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_2

    .line 9
    new-instance v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;

    invoke-direct {v0, p0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;-><init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;)V

    .line 10
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->c:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    sget-object v3, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 14
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 15
    sget-object v3, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 16
    invoke-static {v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->b(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v3, 0x3c

    goto :goto_0

    .line 17
    :cond_1
    iget v3, v3, Lcom/facebook/internal/FetchedAppSettings;->b:I

    :goto_0
    int-to-long v3, v3

    .line 18
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    invoke-interface {v2, v0, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 21
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 22
    :cond_2
    :goto_1
    sget-wide v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 23
    iget-wide v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->r:J

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    goto :goto_2

    :cond_3
    move-wide v4, v2

    .line 24
    :goto_2
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->s:Ljava/lang/String;

    sget-object v1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->a:Lcom/facebook/appevents/InternalAppEventsLogger;

    .line 25
    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 26
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 27
    sget-object v1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 29
    sget-object v6, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    const-string v7, "context"

    .line 30
    invoke-static {v1, v7}, Lcom/facebook/internal/Validate;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 31
    invoke-static {v6, v7}, Lcom/facebook/internal/FetchedAppSettingsManager;->f(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 32
    iget-boolean v6, v6, Lcom/facebook/internal/FetchedAppSettings;->e:Z

    if-eqz v6, :cond_4

    cmp-long v6, v4, v2

    if-lez v6, :cond_4

    .line 33
    new-instance v2, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-direct {v2, v1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v3, "fb_aa_time_spent_view_name"

    .line 35
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    long-to-double v3, v4

    const-string v0, "fb_aa_time_spent_on_view"

    .line 36
    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/facebook/appevents/InternalAppEventsLogger;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 37
    :cond_4
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 38
    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->a()V

    return-void
.end method
