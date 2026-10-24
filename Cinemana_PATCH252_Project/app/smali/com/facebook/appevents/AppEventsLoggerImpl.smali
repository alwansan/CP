.class public Lcom/facebook/appevents/AppEventsLoggerImpl;
.super Ljava/lang/Object;
.source "AppEventsLoggerImpl.java"


# static fields
.field public static c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public static final d:Ljava/lang/Object;

.field public static e:Ljava/lang/String;

.field public static f:Z


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/facebook/appevents/AccessTokenAppIdPair;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/facebook/internal/Utility;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLoggerImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 4
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->a:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 5
    invoke-static {}, Lcom/facebook/AccessToken;->b()Lcom/facebook/AccessToken;

    move-result-object p3

    :cond_0
    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->d()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p3, Lcom/facebook/AccessToken;->y:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    :cond_1
    new-instance p1, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 10
    iget-object p2, p3, Lcom/facebook/AccessToken;->v:Ljava/lang/String;

    .line 11
    sget-object p3, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 12
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 13
    sget-object p3, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 14
    invoke-direct {p1, p2, p3}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->b:Lcom/facebook/appevents/AccessTokenAppIdPair;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 16
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 17
    sget-object p1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 18
    invoke-static {p1}, Lcom/facebook/internal/Utility;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 19
    :cond_3
    new-instance p1, Lcom/facebook/appevents/AccessTokenAppIdPair;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->b:Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 20
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->b()V

    return-void
.end method

.method public static a()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->r:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b()V
    .locals 10

    .line 1
    sget-object v0, Lcom/facebook/appevents/AppEventsLoggerImpl;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v4, Lcom/facebook/appevents/AppEventsLoggerImpl$3;

    invoke-direct {v4}, Lcom/facebook/appevents/AppEventsLoggerImpl$3;-><init>()V

    .line 7
    sget-object v3, Lcom/facebook/appevents/AppEventsLoggerImpl;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0x15180

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static c(Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$4;

    invoke-direct {v1, p1, p0}, Lcom/facebook/appevents/AppEventQueue$4;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-boolean p1, p0, Lcom/facebook/appevents/AppEvent;->s:Z

    if-nez p1, :cond_1

    .line 3
    sget-boolean p1, Lcom/facebook/appevents/AppEventsLoggerImpl;->f:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/facebook/appevents/AppEvent;->u:Ljava/lang/String;

    const-string p1, "fb_mobile_activate_app"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 6
    sput-boolean p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->f:Z

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    sget-object p1, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 8
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->b()Ljava/util/UUID;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLoggerImpl;->e(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 3
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 4
    sget-object v1, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    const-string v2, "app_events_killswitch"

    const/4 v3, 0x0

    .line 5
    invoke-static {v2, v1, v3}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object p1, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 7
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    return-void

    .line 8
    :cond_1
    :try_start_0
    new-instance v9, Lcom/facebook/appevents/AppEvent;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->a:Ljava/lang/String;

    .line 9
    sget v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->i:I

    if-nez v1, :cond_2

    const/4 v3, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v8, p5

    .line 10
    invoke-direct/range {v1 .. v8}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V

    .line 11
    iget-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl;->b:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-static {v9, p1}, Lcom/facebook/appevents/AppEventsLoggerImpl;->c(Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    sget-object p1, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 13
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    goto :goto_1

    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    .line 15
    sget-object p1, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 16
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->b()Ljava/util/UUID;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLoggerImpl;->e(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    return-void
.end method
