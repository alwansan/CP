.class public final Lcom/facebook/appevents/AppEventQueue$4;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field public final synthetic s:Lcom/facebook/appevents/AppEvent;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$4;->r:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventQueue$4;->s:Lcom/facebook/appevents/AppEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->a:Lcom/facebook/appevents/AppEventCollection;

    .line 2
    iget-object v1, p0, Lcom/facebook/appevents/AppEventQueue$4;->r:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventQueue$4;->s:Lcom/facebook/appevents/AppEvent;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/facebook/appevents/AppEventCollection;->a(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v2}, Lcom/facebook/appevents/SessionEventsState;->a(Lcom/facebook/appevents/AppEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    monitor-exit v0

    .line 7
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->a()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 8
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->a:Lcom/facebook/appevents/AppEventCollection;

    .line 9
    monitor-enter v0

    const/4 v1, 0x0

    .line 10
    :try_start_1
    iget-object v2, v0, Lcom/facebook/appevents/AppEventCollection;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/SessionEventsState;

    .line 11
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    iget-object v4, v3, Lcom/facebook/appevents/SessionEventsState;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    add-int/2addr v1, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    :cond_0
    monitor-exit v0

    const/16 v0, 0x64

    if-le v1, v0, :cond_1

    .line 14
    sget-object v0, Lcom/facebook/appevents/FlushReason;->t:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->a(Lcom/facebook/appevents/FlushReason;)V

    goto :goto_1

    .line 15
    :cond_1
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->c:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_2

    .line 16
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    sget-object v1, Lcom/facebook/appevents/AppEventQueue;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf

    .line 18
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception v1

    .line 21
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method
