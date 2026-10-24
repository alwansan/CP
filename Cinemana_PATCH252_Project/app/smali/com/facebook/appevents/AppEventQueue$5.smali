.class public final Lcom/facebook/appevents/AppEventQueue$5;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field public final synthetic b:Lcom/facebook/appevents/SessionEventsState;

.field public final synthetic c:Lcom/facebook/appevents/FlushStatistics;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$5;->a:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p3, p0, Lcom/facebook/appevents/AppEventQueue$5;->b:Lcom/facebook/appevents/SessionEventsState;

    iput-object p4, p0, Lcom/facebook/appevents/AppEventQueue$5;->c:Lcom/facebook/appevents/FlushStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/GraphResponse;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/AppEventQueue$5;->a:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventQueue$5;->b:Lcom/facebook/appevents/SessionEventsState;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventQueue$5;->c:Lcom/facebook/appevents/FlushStatistics;

    sget-object v3, Lcom/facebook/appevents/AppEventQueue;->a:Lcom/facebook/appevents/AppEventCollection;

    .line 2
    sget-object v3, Lcom/facebook/appevents/FlushResult;->t:Lcom/facebook/appevents/FlushResult;

    iget-object v4, p1, Lcom/facebook/GraphResponse;->c:Lcom/facebook/FacebookRequestError;

    .line 3
    sget-object v5, Lcom/facebook/appevents/FlushResult;->r:Lcom/facebook/appevents/FlushResult;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    .line 4
    iget v8, v4, Lcom/facebook/FacebookRequestError;->s:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    move-object p1, v3

    goto :goto_0

    :cond_0
    const-string v8, "Failed:\n  Response: %s\n  Error %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v7

    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v6

    .line 6
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    sget-object p1, Lcom/facebook/appevents/FlushResult;->s:Lcom/facebook/appevents/FlushResult;

    goto :goto_0

    :cond_1
    move-object p1, v5

    .line 8
    :goto_0
    sget-object v8, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    invoke-static {v8}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 9
    :goto_1
    monitor-enter v1

    if-eqz v6, :cond_3

    .line 10
    :try_start_0
    iget-object v4, v1, Lcom/facebook/appevents/SessionEventsState;->a:Ljava/util/List;

    iget-object v6, v1, Lcom/facebook/appevents/SessionEventsState;->b:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_3
    iget-object v4, v1, Lcom/facebook/appevents/SessionEventsState;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 12
    iput v7, v1, Lcom/facebook/appevents/SessionEventsState;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v1

    if-ne p1, v3, :cond_4

    .line 14
    invoke-static {}, Lcom/facebook/FacebookSdk;->b()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v6, Lcom/facebook/appevents/AppEventQueue$6;

    invoke-direct {v6, v0, v1}, Lcom/facebook/appevents/AppEventQueue$6;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V

    .line 15
    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    if-eq p1, v5, :cond_5

    .line 16
    iget-object v0, v2, Lcom/facebook/appevents/FlushStatistics;->b:Lcom/facebook/appevents/FlushResult;

    if-eq v0, v3, :cond_5

    .line 17
    iput-object p1, v2, Lcom/facebook/appevents/FlushStatistics;->b:Lcom/facebook/appevents/FlushResult;

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v1

    throw p1
.end method
