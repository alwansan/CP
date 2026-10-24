.class public final Lcom/shabakaty/downloader/ws6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/shabakaty/downloader/ij$a;
.implements Lcom/shabakaty/downloader/ij$b;


# instance fields
.field public volatile r:Z

.field public volatile s:Lcom/shabakaty/downloader/j66;

.field public final synthetic t:Lcom/shabakaty/downloader/zs6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zs6;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    const-string p1, "MeasurementServiceConnection.onConnected"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ws6;->s:Lcom/shabakaty/downloader/j66;

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/ws6;->s:Lcom/shabakaty/downloader/j66;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/o46;

    iget-object v0, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/hs6;

    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/hs6;-><init>(Lcom/shabakaty/downloader/ws6;Lcom/shabakaty/downloader/o46;I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 8
    :try_start_1
    iput-object p1, p0, Lcom/shabakaty/downloader/ws6;->s:Lcom/shabakaty/downloader/j66;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/shabakaty/downloader/ws6;->r:Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V
    .locals 3

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/d;->i:Lcom/google/android/gms/measurement/internal/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi6;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->i:Lcom/google/android/gms/measurement/internal/b;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v1, "Service connection failed"

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ws6;->r:Z

    iput-object v2, p0, Lcom/shabakaty/downloader/ws6;->s:Lcom/shabakaty/downloader/j66;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/ps6;

    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ps6;-><init>(Lcom/shabakaty/downloader/ws6;I)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v0, "Service connection suspended"

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/ps6;

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ps6;-><init>(Lcom/shabakaty/downloader/ws6;I)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ws6;->r:Z

    iget-object p1, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string p2, "Service connected with null binder"

    .line 4
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 8
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lcom/shabakaty/downloader/o46;

    if-eqz v2, :cond_1

    .line 10
    check-cast v1, Lcom/shabakaty/downloader/o46;

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 11
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/h46;

    .line 12
    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/h46;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    .line 13
    :goto_1
    iget-object p2, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 15
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v1, "Bound to IMeasurementService interface"

    .line 16
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 19
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Got binder with a wrong descriptor"

    .line 20
    invoke-virtual {p2, v2, v1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 21
    :catch_0
    :try_start_2
    iget-object p2, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 23
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v1, "Service connect failed to get IMeasurementService"

    .line 24
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_3

    .line 25
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ws6;->r:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :try_start_3
    invoke-static {}, Lcom/shabakaty/downloader/kb0;->b()Lcom/shabakaty/downloader/kb0;

    move-result-object p1

    iget-object p2, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 28
    iget-object p2, p2, Lcom/shabakaty/downloader/zs6;->c:Lcom/shabakaty/downloader/ws6;

    .line 29
    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/kb0;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 30
    :cond_3
    :try_start_4
    iget-object p2, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 31
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p2

    new-instance v1, Lcom/shabakaty/downloader/hs6;

    .line 32
    invoke-direct {v1, p0, v0, p1}, Lcom/shabakaty/downloader/hs6;-><init>(Lcom/shabakaty/downloader/ws6;Lcom/shabakaty/downloader/o46;I)V

    .line 33
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    .line 34
    :catch_1
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v1, "Service disconnected"

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/ws6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/md7;

    .line 6
    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/ws6;Landroid/content/ComponentName;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void
.end method
