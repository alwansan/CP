.class public final Lcom/facebook/appevents/AppEventQueue$2;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

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
    .locals 6

    .line 1
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->a:Lcom/facebook/appevents/AppEventCollection;

    .line 2
    const-class v1, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->a()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventCollection;->b()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 5
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v5, v0, Lcom/facebook/appevents/AppEventCollection;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/SessionEventsState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    .line 7
    invoke-virtual {v5}, Lcom/facebook/appevents/SessionEventsState;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/facebook/appevents/PersistedEvents;->a(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 8
    monitor-exit v0

    throw v2

    .line 9
    :cond_0
    invoke-static {v2}, Lcom/facebook/appevents/AppEventStore;->b(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    monitor-exit v1

    .line 11
    new-instance v0, Lcom/facebook/appevents/AppEventCollection;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventCollection;-><init>()V

    .line 12
    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->a:Lcom/facebook/appevents/AppEventCollection;

    return-void

    :catchall_1
    move-exception v0

    .line 13
    monitor-exit v1

    throw v0
.end method
