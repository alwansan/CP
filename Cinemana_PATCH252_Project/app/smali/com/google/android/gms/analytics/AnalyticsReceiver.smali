.class public final Lcom/google/android/gms/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public a:Lcom/shabakaty/downloader/jx5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a:Lcom/shabakaty/downloader/jx5;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/jx5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jx5;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a:Lcom/shabakaty/downloader/jx5;

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/jx5;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/fj5;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/fj5;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v0

    if-nez p2, :cond_1

    const-string p1, "AnalyticsReceiver called with null intent"

    .line 6
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/fq1;->I1(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Local AnalyticsReceiver got"

    .line 8
    invoke-virtual {v0, v1, p2}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/ox5;->j(Landroid/content/Context;)Z

    move-result p2

    .line 11
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    sget-object v2, Lcom/shabakaty/downloader/jx5;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 15
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez p2, :cond_2

    .line 16
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 17
    :cond_2
    :try_start_1
    sget-object p2, Lcom/shabakaty/downloader/jx5;->b:Lcom/shabakaty/downloader/f55;

    if-nez p2, :cond_3

    .line 18
    new-instance p2, Lcom/shabakaty/downloader/f55;

    const/4 v1, 0x1

    const-string v3, "Analytics WakeLock"

    invoke-direct {p2, p1, v1, v3}, Lcom/shabakaty/downloader/f55;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 19
    sput-object p2, Lcom/shabakaty/downloader/jx5;->b:Lcom/shabakaty/downloader/f55;

    const/4 p1, 0x0

    .line 20
    iget-object v1, p2, Lcom/shabakaty/downloader/f55;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 21
    iput-boolean p1, p2, Lcom/shabakaty/downloader/f55;->f:Z

    .line 22
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/jx5;->b:Lcom/shabakaty/downloader/f55;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v3, v4}, Lcom/shabakaty/downloader/f55;->a(J)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions."

    .line 23
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/fq1;->I1(Ljava/lang/String;)V

    .line 24
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method
