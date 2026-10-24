.class public final Lcom/shabakaty/downloader/ok5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public volatile r:Lcom/shabakaty/downloader/yu5;

.field public volatile s:Z

.field public final synthetic t:Lcom/shabakaty/downloader/bk5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bk5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "AnalyticsServiceConnection.onServiceConnected"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    if-nez p2, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/fq1;->J1(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    :try_start_2
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    .line 7
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/shabakaty/downloader/yu5;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Lcom/shabakaty/downloader/yu5;

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/ev5;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/ev5;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object p1, v0

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    const-string v0, "Bound to IAnalyticsService interface"

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    const-string v1, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v1, v0}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 13
    :catch_0
    :try_start_3
    iget-object p2, p0, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    const-string v0, "Service connect failed to get IAnalyticsService"

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/fq1;->J1(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-nez p1, :cond_3

    .line 14
    :try_start_4
    invoke-static {}, Lcom/shabakaty/downloader/kb0;->b()Lcom/shabakaty/downloader/kb0;

    move-result-object p1

    iget-object p2, p0, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fq1;->U0()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/bk5;->v:Lcom/shabakaty/downloader/ok5;

    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/kb0;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 17
    :cond_3
    :try_start_5
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ok5;->s:Z

    if-nez p2, :cond_4

    .line 18
    iget-object p2, p0, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    const-string v0, "onServiceConnected received after the timeout limit"

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/fq1;->I1(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fq1;->x1()Lcom/shabakaty/downloader/xu6;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/md7;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/ok5;Lcom/shabakaty/downloader/yu5;)V

    .line 20
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p2, Lcom/shabakaty/downloader/xu6;->b:Lcom/shabakaty/downloader/xu6$a;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 22
    :cond_4
    iput-object p1, p0, Lcom/shabakaty/downloader/ok5;->r:Lcom/shabakaty/downloader/yu5;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 23
    :catch_1
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 24
    monitor-exit p0

    return-void

    .line 25
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw p1

    :catchall_1
    move-exception p1

    .line 26
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "AnalyticsServiceConnection.onServiceDisconnected"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fq1;->x1()Lcom/shabakaty/downloader/xu6;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/md7;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/ok5;Landroid/content/ComponentName;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xu6;->a(Ljava/lang/Runnable;)V

    return-void
.end method
