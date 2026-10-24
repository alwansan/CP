.class public final Lcom/facebook/appevents/AppEventQueue$6;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field public final synthetic s:Lcom/facebook/appevents/SessionEventsState;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$6;->r:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventQueue$6;->s:Lcom/facebook/appevents/SessionEventsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/AppEventQueue$6;->r:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventQueue$6;->s:Lcom/facebook/appevents/SessionEventsState;

    .line 2
    const-class v2, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v2

    .line 3
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->a()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v3

    .line 4
    iget-object v4, v3, Lcom/facebook/appevents/PersistedEvents;->r:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, v3, Lcom/facebook/appevents/PersistedEvents;->r:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/appevents/SessionEventsState;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/appevents/SessionEventsState;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/facebook/appevents/PersistedEvents;->a(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V

    .line 8
    :goto_0
    invoke-static {v3}, Lcom/facebook/appevents/AppEventStore;->b(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
