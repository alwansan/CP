.class public Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;->r:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/appevents/internal/SessionInfo;

    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;->r:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;

    iget-wide v2, v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->r:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 3
    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 4
    :cond_0
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;->r:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;

    iget-object v0, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->s:Ljava/lang/String;

    .line 7
    sget-object v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 8
    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->g:Ljava/lang/String;

    .line 9
    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->b(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 11
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 12
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "com.facebook.appevents.SessionInfo.sessionStartTime"

    .line 15
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "com.facebook.appevents.SessionInfo.sessionEndTime"

    .line 16
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "com.facebook.appevents.SessionInfo.interruptionCount"

    .line 17
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "com.facebook.appevents.SessionInfo.sessionId"

    .line 18
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 21
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 22
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    .line 24
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    .line 25
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    sput-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 28
    :cond_1
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->c:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    sput-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
