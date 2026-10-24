.class public final Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager$1;
.super Ljava/lang/Object;
.source "SuggestedEventsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    :try_start_0
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 5
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 6
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->f(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, v0, Lcom/facebook/internal/FetchedAppSettings;->m:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->a(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->b:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->c:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 11
    :cond_3
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->s:Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 12
    sget-object v1, Lcom/facebook/appevents/ml/ModelManager;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/appevents/ml/ModelManager$Task;->h()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, v0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->f:Ljava/io/File;

    :goto_0
    if-nez v0, :cond_5

    goto :goto_1

    .line 14
    :cond_5
    invoke-static {v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->c(Ljava/io/File;)V

    .line 15
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    :cond_6
    if-eqz v1, :cond_7

    .line 16
    invoke-static {v1}, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->b(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_1
    return-void
.end method
