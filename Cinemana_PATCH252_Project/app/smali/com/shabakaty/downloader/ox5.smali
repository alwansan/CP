.class public final Lcom/shabakaty/downloader/ox5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/bs5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/shabakaty/downloader/gy5;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static t:Ljava/lang/Boolean;


# instance fields
.field public final r:Ljava/lang/Object;

.field public final s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/c26;

    invoke-direct {p1}, Lcom/shabakaty/downloader/c26;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Application context can\'t be null"

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/mu5;

    invoke-direct {p1}, Lcom/shabakaty/downloader/mu5;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fr1;Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ox5;Ljava/lang/Runnable;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;II)Lcom/shabakaty/downloader/ox5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/shabakaty/downloader/ox5;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ox5;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/lz5;

    invoke-direct {v1, p0, p2}, Lcom/shabakaty/downloader/lz5;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/shabakaty/downloader/ox5;-><init>(Lcom/shabakaty/downloader/fr1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;JJ)Lcom/shabakaty/downloader/ox5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lcom/shabakaty/downloader/ox5;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ox5;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 2
    new-instance p4, Lcom/shabakaty/downloader/gd5;

    invoke-direct {p4, p0, p3}, Lcom/shabakaty/downloader/gd5;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p4, p0}, Lcom/shabakaty/downloader/ox5;-><init>(Lcom/shabakaty/downloader/fr1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ox5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/ox5;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ox5;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/q46;

    invoke-direct {v1, p0, p2}, Lcom/shabakaty/downloader/q46;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/ox5;-><init>(Lcom/shabakaty/downloader/fr1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;ZZ)Lcom/shabakaty/downloader/ox5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/shabakaty/downloader/ox5;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ox5;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/bm5;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v1, p0, p2}, Lcom/shabakaty/downloader/bm5;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/shabakaty/downloader/ox5;-><init>(Lcom/shabakaty/downloader/fr1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "null reference"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ox5;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.AnalyticsService"

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 6
    :catch_0
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/shabakaty/downloader/ox5;->t:Ljava/lang/Boolean;

    return v1
.end method


# virtual methods
.method public V(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ox5;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Intent;I)I
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/jx5;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    sget-object v1, Lcom/shabakaty/downloader/jx5;->b:Lcom/shabakaty/downloader/f55;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/f55;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/f55;->b()V

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    nop

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/downloader/fj5;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/fj5;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v0

    const/4 v7, 0x2

    if-nez p1, :cond_1

    const-string p1, "AnalyticsService started with null intent"

    .line 8
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/fq1;->I1(Ljava/lang/String;)V

    return v7

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Local AnalyticsService called. startId, action"

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p1

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/jl5;

    invoke-direct {p1, p0, p2, v0}, Lcom/shabakaty/downloader/jl5;-><init>(Lcom/shabakaty/downloader/ox5;ILcom/shabakaty/downloader/wv5;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ox5;->g(Ljava/lang/Runnable;)V

    :cond_2
    return v7
.end method

.method public f(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_dryRun"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/mu5;

    iput p2, p1, Lcom/shabakaty/downloader/mu5;->e:I

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/fj5;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object p2

    const-string v0, "Bool xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/shabakaty/downloader/fq1;->E1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/downloader/fj5;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/fj5;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->e()Lcom/shabakaty/downloader/tf5;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/ox5;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/ox5;-><init>(Lcom/shabakaty/downloader/ox5;Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fq1;->x1()Lcom/shabakaty/downloader/xu6;

    move-result-object p1

    new-instance v2, Lcom/shabakaty/downloader/md7;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/tf5;Lcom/shabakaty/downloader/bs5;)V

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/xu6;->b:Lcom/shabakaty/downloader/xu6$a;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public h(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_dispatchPeriod"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/mu5;

    iput p2, p1, Lcom/shabakaty/downloader/mu5;->d:I

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/fj5;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object p2

    const-string v0, "Int xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/shabakaty/downloader/fq1;->E1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ga_appName"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/mu5;

    iput-object p2, p1, Lcom/shabakaty/downloader/mu5;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/mu5;

    iput-object p2, p1, Lcom/shabakaty/downloader/mu5;->b:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "ga_logLevel"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/mu5;

    iput-object p2, p1, Lcom/shabakaty/downloader/mu5;->c:Ljava/lang/String;

    return-void

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/fj5;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object p2

    const-string v0, "String xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/shabakaty/downloader/fq1;->E1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
