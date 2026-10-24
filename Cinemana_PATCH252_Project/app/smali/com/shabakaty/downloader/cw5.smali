.class public Lcom/shabakaty/downloader/cw5;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lcom/shabakaty/downloader/fj5;

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/cw5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/cw5;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/cw5;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cw5;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cw5;->c:Z

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->a:Landroid/content/Context;

    .line 7
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    .line 9
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fj5;->e()Lcom/shabakaty/downloader/tf5;

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v0

    const-string v1, "NetworkBroadcastReceiver received action"

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cw5;->b()Z

    move-result p1

    .line 7
    iget-boolean p2, p0, Lcom/shabakaty/downloader/cw5;->c:Z

    if-eq p2, p1, :cond_0

    .line 8
    iput-boolean p1, p0, Lcom/shabakaty/downloader/cw5;->c:Z

    .line 9
    iget-object p2, p0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fj5;->e()Lcom/shabakaty/downloader/tf5;

    move-result-object p2

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Network connectivity status changed"

    invoke-virtual {p2, v1, v0}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p2}, Lcom/shabakaty/downloader/fq1;->x1()Lcom/shabakaty/downloader/xu6;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/mg5;

    invoke-direct {v1, p2, p1}, Lcom/shabakaty/downloader/mg5;-><init>(Lcom/shabakaty/downloader/tf5;Z)V

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, v0, Lcom/shabakaty/downloader/xu6;->b:Lcom/shabakaty/downloader/xu6$a;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void

    :cond_1
    const-string v0, "com.google.analytics.RADIO_POWERED"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    sget-object p1, Lcom/shabakaty/downloader/cw5;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fj5;->e()Lcom/shabakaty/downloader/tf5;

    move-result-object p1

    const-string p2, "Radio powered up"

    .line 17
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 19
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fq1;->U0()Landroid/content/Context;

    move-result-object p2

    .line 20
    invoke-static {p2}, Lcom/shabakaty/downloader/jx5;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/shabakaty/downloader/ox5;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 25
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fq1;->x1()Lcom/shabakaty/downloader/xu6;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/md7;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/tf5;Lcom/shabakaty/downloader/bs5;)V

    .line 26
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, v0, Lcom/shabakaty/downloader/xu6;->b:Lcom/shabakaty/downloader/xu6$a;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_3
    :goto_0
    return-void

    .line 28
    :cond_4
    iget-object p2, p0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p2, v0, p1}, Lcom/shabakaty/downloader/fq1;->E1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
