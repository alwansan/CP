.class public final Lcom/facebook/FacebookSdk$8;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->j(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/facebook/FacebookSdk$InitializeCallback;

.field public final synthetic s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/FacebookSdk$InitializeCallback;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/FacebookSdk$8;->r:Lcom/facebook/FacebookSdk$InitializeCallback;

    iput-object p2, p0, Lcom/facebook/FacebookSdk$8;->s:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lcom/facebook/AccessTokenManager;->a()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/facebook/AccessTokenManager;->b:Lcom/facebook/AccessTokenCache;

    .line 3
    iget-object v2, v1, Lcom/facebook/AccessTokenCache;->a:Landroid/content/SharedPreferences;

    const-string v3, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, v1, Lcom/facebook/AccessTokenCache;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Lcom/facebook/AccessToken;->a(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    :catch_0
    :cond_1
    move-object v1, v4

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/facebook/AccessTokenManager;->d(Lcom/facebook/AccessToken;Z)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/facebook/ProfileManager;->a()Lcom/facebook/ProfileManager;

    move-result-object v0

    .line 10
    iget-object v1, v0, Lcom/facebook/ProfileManager;->b:Lcom/facebook/ProfileCache;

    .line 11
    iget-object v1, v1, Lcom/facebook/ProfileCache;->a:Landroid/content/SharedPreferences;

    const-string v3, "com.facebook.ProfileManager.CachedProfile"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v1, Lcom/facebook/Profile;

    invoke-direct {v1, v3}, Lcom/facebook/Profile;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_3
    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ProfileManager;->b(Lcom/facebook/Profile;Z)V

    .line 15
    :cond_4
    invoke-static {}, Lcom/facebook/AccessToken;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    sget-object v0, Lcom/facebook/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    invoke-static {}, Lcom/facebook/ProfileManager;->a()Lcom/facebook/ProfileManager;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/facebook/ProfileManager;->c:Lcom/facebook/Profile;

    if-nez v0, :cond_5

    .line 19
    invoke-static {}, Lcom/facebook/Profile;->a()V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/facebook/FacebookSdk$8;->r:Lcom/facebook/FacebookSdk$InitializeCallback;

    if-eqz v0, :cond_6

    .line 21
    invoke-interface {v0}, Lcom/facebook/FacebookSdk$InitializeCallback;->a()V

    .line 22
    :cond_6
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 23
    sget-object v1, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 24
    sget-object v3, Lcom/facebook/appevents/AppEventsLoggerImpl;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 25
    invoke-static {}, Lcom/facebook/FacebookSdk;->a()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    .line 26
    :cond_7
    new-instance v3, Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-direct {v3, v0, v1, v4}, Lcom/facebook/appevents/AppEventsLoggerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 27
    sget-object v1, Lcom/facebook/appevents/AppEventsLoggerImpl;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/facebook/appevents/AppEventsLoggerImpl$1;

    invoke-direct {v5, v0, v3}, Lcom/facebook/appevents/AppEventsLoggerImpl$1;-><init>(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLoggerImpl;)V

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    const-string v0, "You haven\'t set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest"

    .line 28
    :try_start_2
    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 29
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 30
    sget-object v1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 33
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_9

    const-string v5, "com.facebook.sdk.AutoAppLinkEnabled"

    .line 34
    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 35
    new-instance v2, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-direct {v2, v1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-static {}, Lcom/facebook/internal/Utility;->t()Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "SchemeWarning"

    .line 38
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.facebook.UserSettingsManager"

    .line 39
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v0, "fb_auto_applink"

    .line 40
    invoke-virtual {v2, v0, v1}, Lcom/facebook/appevents/InternalAppEventsLogger;->b(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 41
    :catch_2
    :cond_9
    iget-object v0, p0, Lcom/facebook/FacebookSdk$8;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->b(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/facebook/appevents/AppEventsLogger;->a:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/facebook/appevents/FlushReason;->r:Lcom/facebook/appevents/FlushReason;

    .line 44
    sget-object v1, Lcom/facebook/appevents/AppEventQueue;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/facebook/appevents/AppEventQueue$3;

    invoke-direct {v2, v0}, Lcom/facebook/appevents/AppEventQueue$3;-><init>(Lcom/facebook/appevents/FlushReason;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v4
.end method
