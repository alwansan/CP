.class public final Lcom/facebook/FacebookSdk;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookSdk$GraphRequestCreator;,
        Lcom/facebook/FacebookSdk$InitializeCallback;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/concurrent/Executor;

.field public static volatile c:Ljava/lang/String;

.field public static volatile d:Ljava/lang/String;

.field public static volatile e:Ljava/lang/String;

.field public static volatile f:Ljava/lang/Boolean;

.field public static volatile g:Ljava/lang/String;

.field public static h:Ljava/util/concurrent/atomic/AtomicLong;

.field public static i:Landroid/content/Context;

.field public static j:I

.field public static final k:Ljava/lang/Object;

.field public static l:Ljava/lang/String;

.field public static m:Z

.field public static n:Z

.field public static o:Ljava/lang/Boolean;

.field public static p:Ljava/lang/Boolean;

.field public static q:Lcom/facebook/FacebookSdk$GraphRequestCreator;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/LoggingBehavior;->w:Lcom/facebook/LoggingBehavior;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    const-string v0, "facebook.com"

    .line 3
    sput-object v0, Lcom/facebook/FacebookSdk;->g:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/FacebookSdk;->h:Ljava/util/concurrent/atomic/AtomicLong;

    const v0, 0xface

    .line 5
    sput v0, Lcom/facebook/FacebookSdk;->j:I

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->k:Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/facebook/internal/ServerProtocol;->a:Ljava/util/Collection;

    const-string v0, "v8.0"

    sput-object v0, Lcom/facebook/FacebookSdk;->l:Ljava/lang/String;

    .line 8
    sput-boolean v3, Lcom/facebook/FacebookSdk;->m:Z

    .line 9
    sput-boolean v3, Lcom/facebook/FacebookSdk;->n:Z

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/facebook/FacebookSdk;->o:Ljava/lang/Boolean;

    .line 11
    sput-object v0, Lcom/facebook/FacebookSdk;->p:Ljava/lang/Boolean;

    .line 12
    new-instance v0, Lcom/facebook/FacebookSdk$1;

    invoke-direct {v0}, Lcom/facebook/FacebookSdk$1;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk;->q:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/UserSettingsManager;->b()V

    .line 2
    sget-object v0, Lcom/facebook/UserSettingsManager;->d:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-virtual {v0}, Lcom/facebook/UserSettingsManager$UserSetting;->a()Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v1, Lcom/facebook/FacebookSdk;->b:Ljava/util/concurrent/Executor;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lcom/facebook/FacebookSdk;->b:Ljava/util/concurrent/Executor;

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Lcom/facebook/FacebookSdk;->l:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "getGraphApiVersion: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/facebook/AccessToken;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/facebook/AccessToken;->B:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/facebook/FacebookSdk;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "gaming"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/facebook/FacebookSdk;->g:Ljava/lang/String;

    const-string v1, "facebook.com"

    const-string v2, "fb.gg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_2
    sget-object v0, Lcom/facebook/FacebookSdk;->g:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public static declared-synchronized e()Z
    .locals 2

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->p:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f()Z
    .locals 2

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->o:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static g(Lcom/facebook/LoggingBehavior;)Z
    .locals 1

    .line 1
    sget-object p0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    monitor-exit p0

    return v0

    .line 3
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_9

    .line 3
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 5
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_2
    sput-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_3
    instance-of v0, v0, Ljava/lang/Number;

    if-nez v0, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_5
    :goto_0
    sget-object v0, Lcom/facebook/FacebookSdk;->d:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->d:Ljava/lang/String;

    .line 15
    :cond_6
    sget-object v0, Lcom/facebook/FacebookSdk;->e:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 16
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->e:Ljava/lang/String;

    .line 17
    :cond_7
    sget v0, Lcom/facebook/FacebookSdk;->j:I

    const v1, 0xface

    if-ne v0, v1, :cond_8

    .line 18
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.CallbackOffset"

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/facebook/FacebookSdk;->j:I

    .line 20
    :cond_8
    sget-object v0, Lcom/facebook/FacebookSdk;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    .line 21
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    const-string v1, "com.facebook.sdk.CodelessDebugLogEnabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/facebook/FacebookSdk;->f:Ljava/lang/Boolean;

    :catch_0
    :cond_9
    :goto_1
    return-void
.end method

.method public static declared-synchronized i(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/FacebookSdk;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v1}, Lcom/facebook/FacebookSdk;->j(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized j(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class p1, Lcom/facebook/FacebookSdk;

    monitor-enter p1

    .line 1
    :try_start_0
    sget-object v0, Lcom/facebook/FacebookSdk;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p1

    return-void

    :cond_0
    :try_start_1
    const-string v0, "applicationContext"

    .line 3
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.facebook.FacebookActivity"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    .line 6
    :try_start_2
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    :try_start_3
    const-string v0, "FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info."

    const-string v2, "com.facebook.internal.Validate"

    .line 7
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "android.permission.INTERNET"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    const-string v0, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml."

    const-string v2, "com.facebook.internal.Validate"

    .line 9
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 11
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->h(Landroid/content/Context;)V

    .line 13
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/facebook/FacebookSdk;->o:Ljava/lang/Boolean;

    .line 15
    invoke-static {}, Lcom/facebook/UserSettingsManager;->b()V

    .line 16
    sget-object v2, Lcom/facebook/UserSettingsManager;->c:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-virtual {v2}, Lcom/facebook/UserSettingsManager$UserSetting;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    sput-object v0, Lcom/facebook/FacebookSdk;->p:Ljava/lang/Boolean;

    .line 18
    :cond_4
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_5

    .line 19
    invoke-static {}, Lcom/facebook/UserSettingsManager;->b()V

    .line 20
    sget-object v0, Lcom/facebook/UserSettingsManager;->d:Lcom/facebook/UserSettingsManager$UserSetting;

    invoke-virtual {v0}, Lcom/facebook/UserSettingsManager$UserSetting;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    sget-object v2, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->c(Landroid/app/Application;Ljava/lang/String;)V

    .line 22
    :cond_5
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->c()V

    .line 23
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->f()V

    .line 24
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 25
    sget-object v2, Lcom/facebook/internal/BoltsMeasurementEventListener;->b:Lcom/facebook/internal/BoltsMeasurementEventListener;

    if-eqz v2, :cond_6

    goto :goto_1

    .line 26
    :cond_6
    new-instance v2, Lcom/facebook/internal/BoltsMeasurementEventListener;

    invoke-direct {v2, v0}, Lcom/facebook/internal/BoltsMeasurementEventListener;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/facebook/internal/BoltsMeasurementEventListener;->b:Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 27
    iget-object v0, v2, Lcom/facebook/internal/BoltsMeasurementEventListener;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/downloader/nj2;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/nj2;

    move-result-object v0

    .line 28
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.parse.bolts.measurement_event"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/nj2;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 29
    sget-object v0, Lcom/facebook/internal/BoltsMeasurementEventListener;->b:Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 30
    :goto_1
    new-instance v0, Lcom/facebook/internal/LockOnGetVariable;

    new-instance v2, Lcom/facebook/FacebookSdk$2;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$2;-><init>()V

    invoke-direct {v0, v2}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 31
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->D:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$3;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$3;-><init>()V

    invoke-static {v0, v2}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 32
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->u:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$4;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$4;-><init>()V

    invoke-static {v0, v2}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 33
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->J:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$5;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$5;-><init>()V

    invoke-static {v0, v2}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 34
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->K:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$6;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$6;-><init>()V

    invoke-static {v0, v2}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 35
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->I:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v2, Lcom/facebook/FacebookSdk$7;

    invoke-direct {v2}, Lcom/facebook/FacebookSdk$7;-><init>()V

    invoke-static {v0, v2}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 36
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/FacebookSdk$8;

    invoke-direct {v2, v1, p0}, Lcom/facebook/FacebookSdk$8;-><init>(Lcom/facebook/FacebookSdk$InitializeCallback;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 37
    invoke-static {}, Lcom/facebook/FacebookSdk;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    monitor-exit p1

    return-void

    .line 39
    :cond_7
    :try_start_4
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
