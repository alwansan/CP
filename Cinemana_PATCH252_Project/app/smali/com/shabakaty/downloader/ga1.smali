.class public Lcom/shabakaty/downloader/ga1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:Lcom/shabakaty/downloader/i75;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ga1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ga1;->a:Landroid/content/Context;

    sget-object p1, Lcom/shabakaty/downloader/ba1;->r:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/shabakaty/downloader/ga1;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Lcom/shabakaty/downloader/uk4;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseMessaging"

    const-string v2, "Binding to service"

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/ga1;->c:Ljava/lang/Object;

    .line 4
    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/shabakaty/downloader/ga1;->d:Lcom/shabakaty/downloader/i75;

    if-nez v3, :cond_1

    new-instance v3, Lcom/shabakaty/downloader/i75;

    .line 5
    invoke-direct {v3, p0, v0}, Lcom/shabakaty/downloader/i75;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v3, Lcom/shabakaty/downloader/ga1;->d:Lcom/shabakaty/downloader/i75;

    :cond_1
    sget-object p0, Lcom/shabakaty/downloader/ga1;->d:Lcom/shabakaty/downloader/i75;

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    monitor-enter p0

    :try_start_1
    const-string v0, "FirebaseMessaging"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FirebaseMessaging"

    const-string v1, "new intent queued in the bind-strategy delivery"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/i75$a;

    .line 10
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/i75$a;-><init>(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/i75;->t:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/zz6;

    .line 12
    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/i75$a;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2328

    .line 13
    invoke-interface {p1, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 14
    iget-object v2, v0, Lcom/shabakaty/downloader/i75$a;->b:Lcom/shabakaty/downloader/zk4;

    .line 15
    iget-object v2, v2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 16
    new-instance v3, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/fq1;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    .line 17
    iget-object v1, v2, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    new-instance v4, Lcom/shabakaty/downloader/rk6;

    .line 18
    sget v5, Lcom/shabakaty/downloader/if7;->a:I

    invoke-direct {v4, p1, v3}, Lcom/shabakaty/downloader/rk6;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/k63;)V

    .line 19
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/ic7;->c(Lcom/shabakaty/downloader/jd7;)V

    .line 20
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ye7;->u()V

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/i75;->u:Ljava/util/Queue;

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/i75;->b()V

    .line 24
    iget-object p1, v0, Lcom/shabakaty/downloader/i75$a;->b:Lcom/shabakaty/downloader/zk4;

    .line 25
    iget-object p1, p1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    sget-object p0, Lcom/shabakaty/downloader/ca1;->r:Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/shabakaty/downloader/da1;->r:Lcom/shabakaty/downloader/td0;

    .line 28
    invoke-virtual {p1, p0, v0}, Lcom/shabakaty/downloader/ye7;->e(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p0

    .line 30
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public b(Landroid/content/Intent;)Lcom/shabakaty/downloader/uk4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "gcm.rawData64"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v3, "rawData"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ga1;->a:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/uc3;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x10000000

    and-int/2addr v1, v3

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 7
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ga1;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/ba1;->r:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shabakaty/downloader/sh6;

    .line 8
    invoke-direct {v2, v0, p1}, Lcom/shabakaty/downloader/sh6;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/kl4;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/yh1;

    invoke-direct {v3, v0, p1}, Lcom/shabakaty/downloader/yh1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/uk4;->f(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    :goto_0
    return-object p1
.end method
