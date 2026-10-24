.class public Lcom/facebook/appevents/AppEventQueue;
.super Ljava/lang/Object;
.source "AppEventQueue.java"


# static fields
.field public static volatile a:Lcom/facebook/appevents/AppEventCollection;

.field public static final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public static c:Ljava/util/concurrent/ScheduledFuture;

.field public static final d:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/appevents/AppEventCollection;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventCollection;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->a:Lcom/facebook/appevents/AppEventCollection;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    new-instance v0, Lcom/facebook/appevents/AppEventQueue$1;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventQueue$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lcom/facebook/appevents/FlushReason;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->a()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/facebook/appevents/AppEventQueue;->a:Lcom/facebook/appevents/AppEventCollection;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v0, Lcom/facebook/appevents/PersistedEvents;->r:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 6
    invoke-virtual {v1, v3}, Lcom/facebook/appevents/AppEventCollection;->a(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v4

    .line 7
    iget-object v5, v0, Lcom/facebook/appevents/PersistedEvents;->r:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/AppEvent;

    .line 9
    invoke-virtual {v4, v5}, Lcom/facebook/appevents/SessionEventsState;->a(Lcom/facebook/appevents/AppEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v1

    .line 11
    :try_start_1
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->a:Lcom/facebook/appevents/AppEventCollection;

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventQueue;->b(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_2

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    .line 13
    iget v2, p0, Lcom/facebook/appevents/FlushStatistics;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    .line 14
    iget-object p0, p0, Lcom/facebook/appevents/FlushStatistics;->b:Lcom/facebook/appevents/FlushResult;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 16
    sget-object p0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 17
    invoke-static {p0}, Lcom/shabakaty/downloader/nj2;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/nj2;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/nj2;->c(Landroid/content/Intent;)Z

    :cond_2
    return-void

    :catch_0
    move-exception p0

    const-string v0, "com.facebook.appevents.AppEventQueue"

    const-string v1, "Caught unexpected exception while flushing app events: "

    .line 18
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v1

    throw p0
.end method

.method public static b(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;
    .locals 16

    move-object/from16 v1, p1

    .line 1
    new-instance v0, Lcom/facebook/appevents/FlushStatistics;

    invoke-direct {v0}, Lcom/facebook/appevents/FlushStatistics;-><init>()V

    .line 2
    sget-object v2, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 3
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 4
    sget-object v2, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 5
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    const-string v3, "com.facebook.sdk.appEventPreferences"

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "limitEventUsage"

    .line 7
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/appevents/AppEventCollection;->b()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v8, v1, Lcom/facebook/appevents/AppEventCollection;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/appevents/SessionEventsState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p1

    .line 12
    iget-object v9, v6, Lcom/facebook/appevents/AccessTokenAppIdPair;->s:Ljava/lang/String;

    .line 13
    invoke-static {v9, v4}, Lcom/facebook/internal/FetchedAppSettingsManager;->f(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v10

    const-string v11, "%s/activities"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v9, v13, v4

    .line 14
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 15
    invoke-static {v7, v9, v7, v7}, Lcom/facebook/GraphRequest;->m(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v9

    .line 16
    iget-object v11, v9, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    if-nez v11, :cond_0

    .line 17
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v13, "access_token"

    .line 18
    iget-object v14, v6, Lcom/facebook/appevents/AccessTokenAppIdPair;->r:Ljava/lang/String;

    .line 19
    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v13, Lcom/facebook/appevents/AppEventsLoggerImpl;->d:Ljava/lang/Object;

    monitor-enter v13

    .line 21
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    new-instance v13, Lcom/facebook/appevents/AppEventsLoggerImpl$2;

    invoke-direct {v13}, Lcom/facebook/appevents/AppEventsLoggerImpl$2;-><init>()V

    .line 23
    sget-object v14, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 24
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 25
    sget-object v14, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    const-string v15, "com.facebook.sdk.appEventPreferences"

    .line 26
    invoke-virtual {v14, v15, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v12, "is_referrer_updated"

    .line 27
    invoke-interface {v14, v12, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_2

    .line 28
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 29
    sget-object v12, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    if-eqz v12, :cond_1

    .line 30
    new-instance v14, Lcom/shabakaty/downloader/t12;

    invoke-direct {v14, v12}, Lcom/shabakaty/downloader/t12;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v12, Lcom/facebook/internal/InstallReferrerUtil$1;

    invoke-direct {v12, v14, v13}, Lcom/facebook/internal/InstallReferrerUtil$1;-><init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/facebook/internal/InstallReferrerUtil$Callback;)V

    .line 32
    :try_start_2
    invoke-virtual {v14, v12}, Lcom/shabakaty/downloader/t12;->c(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_2
    :goto_1
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 35
    sget-object v12, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 36
    invoke-virtual {v12, v15, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "install_referrer"

    .line 37
    invoke-interface {v12, v13, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    const-string v13, "install_referrer"

    .line 38
    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_3
    iput-object v11, v9, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    if-eqz v10, :cond_4

    .line 40
    iget-boolean v10, v10, Lcom/facebook/internal/FetchedAppSettings;->a:Z

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 41
    :goto_2
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 42
    sget-object v11, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 43
    monitor-enter v8

    .line 44
    :try_start_3
    iget v12, v8, Lcom/facebook/appevents/SessionEventsState;->c:I

    .line 45
    iget-object v13, v8, Lcom/facebook/appevents/SessionEventsState;->a:Ljava/util/List;

    .line 46
    sget-boolean v14, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->a:Z

    if-nez v14, :cond_5

    goto :goto_4

    .line 47
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 48
    :cond_6
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 49
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/appevents/AppEvent;

    .line 50
    sget-object v15, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->c:Ljava/util/Set;

    .line 51
    iget-object v14, v14, Lcom/facebook/appevents/AppEvent;->u:Ljava/lang/String;

    .line 52
    check-cast v15, Ljava/util/HashSet;

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 53
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 54
    :cond_7
    :goto_4
    iget-object v13, v8, Lcom/facebook/appevents/SessionEventsState;->b:Ljava/util/List;

    iget-object v14, v8, Lcom/facebook/appevents/SessionEventsState;->a:Ljava/util/List;

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    iget-object v13, v8, Lcom/facebook/appevents/SessionEventsState;->a:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 56
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 57
    iget-object v14, v8, Lcom/facebook/appevents/SessionEventsState;->b:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/appevents/AppEvent;

    .line 58
    iget-object v4, v15, Lcom/facebook/appevents/AppEvent;->v:Ljava/lang/String;

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    .line 59
    :cond_8
    iget-object v4, v15, Lcom/facebook/appevents/AppEvent;->r:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/appevents/AppEvent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    iget-object v7, v15, Lcom/facebook/appevents/AppEvent;->v:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_6
    if-eqz v4, :cond_a

    if-nez v10, :cond_9

    .line 61
    iget-boolean v4, v15, Lcom/facebook/appevents/AppEvent;->s:Z

    if-nez v4, :cond_b

    .line 62
    :cond_9
    iget-object v4, v15, Lcom/facebook/appevents/AppEvent;->r:Lorg/json/JSONObject;

    .line 63
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    .line 64
    :cond_a
    invoke-virtual {v15}, Lcom/facebook/appevents/AppEvent;->toString()Ljava/lang/String;

    .line 65
    sget-object v4, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    :cond_b
    :goto_7
    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_5

    .line 66
    :cond_c
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_d

    .line 67
    monitor-exit v8

    const/4 v4, 0x0

    goto :goto_9

    .line 68
    :cond_d
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :try_start_4
    sget-object v4, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->s:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    iget-object v7, v8, Lcom/facebook/appevents/SessionEventsState;->d:Lcom/facebook/internal/AttributionIdentifiers;

    iget-object v10, v8, Lcom/facebook/appevents/SessionEventsState;->e:Ljava/lang/String;

    .line 70
    invoke-static {v4, v7, v10, v2, v11}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->a(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    .line 71
    iget v7, v8, Lcom/facebook/appevents/SessionEventsState;->c:I

    if-lez v7, :cond_e

    const-string v7, "num_skipped_events"

    .line 72
    invoke-virtual {v4, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    .line 73
    :catch_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 74
    :cond_e
    :goto_8
    iput-object v4, v9, Lcom/facebook/GraphRequest;->d:Lorg/json/JSONObject;

    .line 75
    iget-object v4, v9, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    if-nez v4, :cond_f

    .line 76
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 77
    :cond_f
    invoke-virtual {v13}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    const-string v10, "custom_events"

    .line 78
    invoke-virtual {v4, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-object v7, v9, Lcom/facebook/GraphRequest;->g:Ljava/lang/Object;

    .line 80
    :cond_10
    iput-object v4, v9, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    .line 81
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_9
    if-nez v4, :cond_11

    const/4 v7, 0x0

    goto :goto_a

    .line 82
    :cond_11
    iget v7, v0, Lcom/facebook/appevents/FlushStatistics;->a:I

    add-int/2addr v7, v4

    iput v7, v0, Lcom/facebook/appevents/FlushStatistics;->a:I

    .line 83
    new-instance v4, Lcom/facebook/appevents/AppEventQueue$5;

    invoke-direct {v4, v6, v9, v8, v0}, Lcom/facebook/appevents/AppEventQueue$5;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    invoke-virtual {v9, v4}, Lcom/facebook/GraphRequest;->u(Lcom/facebook/GraphRequest$Callback;)V

    move-object v7, v9

    :goto_a
    if-eqz v7, :cond_12

    .line 84
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 85
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 86
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 87
    monitor-exit p1

    throw v0

    .line 88
    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 89
    sget-object v1, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    .line 90
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 91
    sget-object v2, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 92
    invoke-static {v1}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest;

    .line 94
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->d()Lcom/facebook/GraphResponse;

    goto :goto_b

    :cond_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method
