.class public final Lcom/facebook/internal/FetchedAppSettingsManager$1;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppSettingsManager;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->r:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->r:Landroid/content/Context;

    const-string v1, "com.facebook.internal.preferences.APP_SETTINGS"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->s:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/facebook/internal/Utility;->w(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_0

    .line 7
    iget-object v1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->t:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/facebook/internal/FetchedAppSettingsManager;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v3

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->t:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v4, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->t:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->s:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const/4 v0, 0x1

    if-eqz v3, :cond_2

    .line 12
    iget-object v1, v3, Lcom/facebook/internal/FetchedAppSettings;->i:Ljava/lang/String;

    .line 13
    sget-boolean v3, Lcom/facebook/internal/FetchedAppSettingsManager;->e:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 15
    sput-boolean v0, Lcom/facebook/internal/FetchedAppSettingsManager;->e:Z

    .line 16
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->a:[Ljava/lang/String;

    const-string v3, "FetchedAppSettingsManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->t:Ljava/lang/String;

    .line 18
    invoke-static {v1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 20
    sget-object v4, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const-string v6, "com.facebook.internal.APP_GATEKEEPERS.%s"

    .line 21
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    .line 22
    invoke-virtual {v4, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 23
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    invoke-static {v1, v3}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 25
    :goto_1
    sget-object v1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->a:Lcom/facebook/appevents/InternalAppEventsLogger;

    .line 26
    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 27
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 28
    sget-object v1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 30
    sget-object v3, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/facebook/FacebookSdk;->a()Z

    move-result v4

    const-string v5, "context"

    .line 32
    invoke-static {v1, v5}, Lcom/facebook/internal/Validate;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_a

    .line 33
    instance-of v4, v1, Landroid/app/Application;

    if-eqz v4, :cond_9

    .line 34
    check-cast v1, Landroid/app/Application;

    .line 35
    sget-object v4, Lcom/facebook/appevents/AppEventsLoggerImpl;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 36
    invoke-static {}, Lcom/facebook/FacebookSdk;->f()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 37
    sget-boolean v4, Lcom/facebook/appevents/AnalyticsUserIDStore;->c:Z

    if-eqz v4, :cond_4

    goto :goto_2

    .line 38
    :cond_4
    sget-object v4, Lcom/facebook/appevents/AppEventsLoggerImpl;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v4, :cond_5

    .line 39
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->b()V

    .line 40
    :cond_5
    sget-object v4, Lcom/facebook/appevents/AppEventsLoggerImpl;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 41
    new-instance v5, Lcom/facebook/appevents/AnalyticsUserIDStore$1;

    invoke-direct {v5}, Lcom/facebook/appevents/AnalyticsUserIDStore$1;-><init>()V

    .line 42
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    :goto_2
    sget-object v4, Lcom/facebook/appevents/UserDataStore;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 44
    :cond_6
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->a()V

    :goto_3
    if-nez v3, :cond_7

    .line 45
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 46
    sget-object v3, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 47
    :cond_7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 48
    invoke-static {}, Lcom/facebook/FacebookSdk;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/facebook/FacebookSdk$9;

    invoke-direct {v6, v4, v3}, Lcom/facebook/FacebookSdk$9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 50
    invoke-static {v1, v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->c(Landroid/app/Application;Ljava/lang/String;)V

    goto :goto_4

    .line 51
    :cond_8
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v1, "com.facebook.appevents.internal.AutomaticAnalyticsLogger"

    const-string v3, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    .line 52
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_a
    :goto_4
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    :try_start_1
    const-string v1, "com.android.vending.billing.IInAppBillingService$Stub"

    .line 54
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 55
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->b:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v3, "com.android.billingclient.api.ProxyBillingActivity"

    .line 56
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 57
    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->c:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 58
    :catch_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->c:Ljava/lang/Boolean;

    .line 59
    :goto_5
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->a:Ljava/util/HashMap;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 61
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->d:Landroid/content/SharedPreferences;

    const-string v5, "LAST_CLEARED_TIME"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-nez v10, :cond_c

    .line 62
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6

    :cond_c
    sub-long v6, v3, v8

    const-wide/32 v8, 0x93a80

    cmp-long v10, v6, v8

    if-lez v10, :cond_d

    .line 63
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    :cond_d
    :goto_6
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    .line 65
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->f:Landroid/content/Intent;

    .line 66
    new-instance v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$1;

    invoke-direct {v1}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$1;-><init>()V

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->d:Landroid/content/ServiceConnection;

    .line 67
    new-instance v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;

    invoke-direct {v1}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;-><init>()V

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    goto :goto_7

    .line 68
    :catch_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->b:Ljava/lang/Boolean;

    .line 69
    :goto_7
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_8

    .line 70
    :cond_e
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 71
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_8

    .line 72
    :cond_f
    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 73
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 74
    sget-object v1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 75
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_10

    .line 76
    move-object v2, v1

    check-cast v2, Landroid/app/Application;

    .line 77
    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 78
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->f:Landroid/content/Intent;

    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 79
    :cond_10
    :goto_8
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager;->b:Ljava/util/Map;

    .line 81
    iget-object v2, p0, Lcom/facebook/internal/FetchedAppSettingsManager$1;->t:Ljava/lang/String;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->t:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    goto :goto_9

    :cond_11
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->u:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    :goto_9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->e()V

    return-void
.end method
