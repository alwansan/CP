.class public final Lcom/facebook/appevents/ml/ModelManager$2;
.super Ljava/lang/Object;
.source "ModelManager.java"

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
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager$1;

    invoke-direct {v2}, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager$1;-><init>()V

    .line 4
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
