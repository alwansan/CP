.class public final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->c(Landroid/app/Application;Ljava/lang/String;)V
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
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    sget-object p2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p2, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 2
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    .line 3
    sget-object p1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;

    invoke-direct {p2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 2
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    .line 3
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->a:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    .line 4
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessMatcher;->a()Lcom/facebook/appevents/codeless/CodelessMatcher;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 2
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    .line 3
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    .line 4
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "com.facebook.appevents.internal.ActivityLifecycleTracker"

    const-string v1, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    invoke-static {p1}, Lcom/facebook/internal/Utility;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 9
    sget-object v3, Lcom/facebook/appevents/codeless/CodelessManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessMatcher;->a()Lcom/facebook/appevents/codeless/CodelessMatcher;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_5

    .line 12
    iget-object v4, v3, Lcom/facebook/appevents/codeless/CodelessMatcher;->b:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v4, v3, Lcom/facebook/appevents/codeless/CodelessMatcher;->c:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 14
    iget-object v4, v3, Lcom/facebook/appevents/codeless/CodelessMatcher;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v5, v3, Lcom/facebook/appevents/codeless/CodelessMatcher;->d:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, v3, Lcom/facebook/appevents/codeless/CodelessMatcher;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 16
    sget-object p1, Lcom/facebook/appevents/codeless/CodelessManager;->c:Lcom/facebook/appevents/codeless/ViewIndexer;

    if-eqz p1, :cond_3

    .line 17
    iget-object v3, p1, Lcom/facebook/appevents/codeless/ViewIndexer;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-nez v3, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    iget-object v3, p1, Lcom/facebook/appevents/codeless/ViewIndexer;->c:Ljava/util/Timer;

    if-eqz v3, :cond_3

    .line 19
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    const/4 v3, 0x0

    .line 20
    iput-object v3, p1, Lcom/facebook/appevents/codeless/ViewIndexer;->c:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "com.facebook.appevents.codeless.ViewIndexer"

    const-string v4, "Error unscheduling indexing job"

    .line 21
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :cond_3
    :goto_0
    sget-object p1, Lcom/facebook/appevents/codeless/CodelessManager;->b:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_4

    .line 23
    sget-object v3, Lcom/facebook/appevents/codeless/CodelessManager;->a:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    invoke-virtual {p1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 24
    :cond_4
    :goto_1
    new-instance p1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;

    invoke-direct {p1, v0, v1, v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;-><init>(JLjava/lang/String;)V

    .line 25
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 26
    :cond_5
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t remove activity from CodelessMatcher on non-UI thread"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 2
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->j:Ljava/lang/ref/WeakReference;

    .line 4
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    sput-wide v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->h:J

    .line 8
    invoke-static {p1}, Lcom/facebook/internal/Utility;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 9
    sget-object v3, Lcom/facebook/appevents/codeless/CodelessManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 10
    :cond_0
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessMatcher;->a()Lcom/facebook/appevents/codeless/CodelessMatcher;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_8

    .line 12
    iget-object v4, v3, Lcom/facebook/appevents/codeless/CodelessMatcher;->b:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v4, v3, Lcom/facebook/appevents/codeless/CodelessMatcher;->d:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 14
    iget-object v4, v3, Lcom/facebook/appevents/codeless/CodelessMatcher;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    iget-object v4, v3, Lcom/facebook/appevents/codeless/CodelessMatcher;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    iput-object v4, v3, Lcom/facebook/appevents/codeless/CodelessMatcher;->d:Ljava/util/HashSet;

    .line 16
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 17
    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/CodelessMatcher;->c()V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v4, v3, Lcom/facebook/appevents/codeless/CodelessMatcher;->a:Landroid/os/Handler;

    new-instance v5, Lcom/facebook/appevents/codeless/CodelessMatcher$1;

    invoke-direct {v5, v3}, Lcom/facebook/appevents/codeless/CodelessMatcher$1;-><init>(Lcom/facebook/appevents/codeless/CodelessMatcher;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 20
    sget-object v4, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 21
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 22
    sget-object v4, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 23
    invoke-static {v4}, Lcom/facebook/internal/FetchedAppSettingsManager;->b(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 24
    iget-boolean v6, v5, Lcom/facebook/internal/FetchedAppSettings;->h:Z

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const-string v6, "sensor"

    .line 25
    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    sput-object v3, Lcom/facebook/appevents/codeless/CodelessManager;->b:Landroid/hardware/SensorManager;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    .line 26
    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 27
    new-instance v6, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-direct {v6, p1}, Lcom/facebook/appevents/codeless/ViewIndexer;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/facebook/appevents/codeless/CodelessManager;->c:Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 28
    sget-object v6, Lcom/facebook/appevents/codeless/CodelessManager;->a:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    new-instance v7, Lcom/facebook/appevents/codeless/CodelessManager$1;

    invoke-direct {v7, v5, v4}, Lcom/facebook/appevents/codeless/CodelessManager$1;-><init>(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V

    .line 29
    iput-object v7, v6, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->a:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    .line 30
    sget-object v4, Lcom/facebook/appevents/codeless/CodelessManager;->b:Landroid/hardware/SensorManager;

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v3, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 31
    iget-boolean v3, v5, Lcom/facebook/internal/FetchedAppSettings;->h:Z

    if-eqz v3, :cond_5

    .line 32
    sget-object v3, Lcom/facebook/appevents/codeless/CodelessManager;->c:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/ViewIndexer;->a()V

    .line 33
    :cond_5
    :goto_1
    sget-object v3, Lcom/facebook/appevents/aam/MetadataIndexer;->a:Ljava/lang/Boolean;

    .line 34
    :try_start_0
    sget-object v3, Lcom/facebook/appevents/aam/MetadataIndexer;->a:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/facebook/appevents/aam/MetadataRule;->d:Ljava/util/Set;

    .line 35
    new-instance v3, Ljava/util/HashSet;

    sget-object v4, Lcom/facebook/appevents/aam/MetadataRule;->d:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 36
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 37
    :cond_6
    invoke-static {p1}, Lcom/facebook/appevents/aam/MetadataViewObserver;->c(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    :cond_7
    :goto_2
    invoke-static {p1}, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->b(Landroid/app/Activity;)V

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 40
    new-instance v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;-><init>(JLjava/lang/String;Landroid/content/Context;)V

    .line 41
    sget-object p1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 42
    :cond_8
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t add activity to CodelessMatcher on non-UI thread"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    sget-object p2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p2, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 2
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget p1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->i:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->i:I

    .line 2
    sget-object p1, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 2
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    .line 3
    sget-object p1, Lcom/facebook/appevents/AppEventsLoggerImpl;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 4
    sget-object p1, Lcom/facebook/appevents/AppEventQueue;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/facebook/appevents/AppEventQueue$2;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventQueue$2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5
    sget p1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->i:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->i:I

    return-void
.end method
