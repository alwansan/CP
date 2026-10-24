.class public final Lcom/shabakaty/downloader/fa7;
.super Lcom/shabakaty/downloader/pf5;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/s57;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/s57;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pf5;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/p36;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/ij;->z:Landroid/os/Looper;

    .line 5
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/p36;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/fa7;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final G(Ljava/lang/String;DZ)V
    .locals 0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Deprecated callback: \"onStatusreceived\""

    .line 2
    invoke-virtual {p1, p3, p2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final H1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s57;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "Receive (type=text, ns=%s) %s"

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/fa7;->b:Landroid/os/Handler;

    new-instance v2, Lcom/shabakaty/downloader/je7;

    invoke-direct {v2, v0, p1, p2}, Lcom/shabakaty/downloader/je7;-><init>(Lcom/shabakaty/downloader/s57;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final V1(I)V
    .locals 0

    return-void
.end method

.method public final X1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s57;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/s57;->o0:Ljava/lang/String;

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/s57;->p0:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s57;->T(I)V

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/s57;->Z:Lcom/shabakaty/downloader/nw$d;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/fa7;->b:Landroid/os/Handler;

    new-instance v2, Lcom/shabakaty/downloader/xd7;

    invoke-direct {v2, v0, p1}, Lcom/shabakaty/downloader/xd7;-><init>(Lcom/shabakaty/downloader/s57;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final a2(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s57;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, p3, v0}, Lcom/shabakaty/downloader/s57;->N(JI)V

    return-void
.end method

.method public final j(Lcom/shabakaty/downloader/nc;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s57;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, v0, Lcom/shabakaty/downloader/s57;->X:Lcom/shabakaty/downloader/nc;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/nc;->r:Ljava/lang/String;

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/s57;->o0:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Lcom/shabakaty/downloader/s57;->p0:Ljava/lang/String;

    .line 6
    iput-object p2, v0, Lcom/shabakaty/downloader/s57;->e0:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/s57;->v0:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/s57;->s0:Lcom/shabakaty/downloader/lj;

    if-eqz v2, :cond_1

    .line 10
    new-instance v9, Lcom/shabakaty/downloader/nc7;

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 11
    invoke-direct {v4, v3, v10}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object v3, v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    .line 12
    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/nc7;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/shabakaty/downloader/nc;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v9}, Lcom/shabakaty/downloader/lj;->a(Ljava/lang/Object;)V

    .line 13
    iput-object v10, v0, Lcom/shabakaty/downloader/s57;->s0:Lcom/shabakaty/downloader/lj;

    .line 14
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k(I)V
    .locals 0

    return-void
.end method

.method public final m(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s57;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/s57;->U()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ICastDeviceControllerListener.onDisconnected: %d"

    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/ij;->C:Landroid/os/Handler;

    iget-object v1, v1, Lcom/shabakaty/downloader/ij;->S:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    .line 7
    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public final m1(Ljava/lang/String;[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s57;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 3
    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final n1(Lcom/shabakaty/downloader/ee5;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s57;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onApplicationStatusChanged"

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/fa7;->b:Landroid/os/Handler;

    new-instance v2, Lcom/shabakaty/downloader/md7;

    invoke-direct {v2, v0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/s57;Lcom/shabakaty/downloader/ee5;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final t(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s57;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s57;->T(I)V

    return-void
.end method

.method public final t1(Lcom/shabakaty/downloader/wf7;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s57;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onDeviceStatusChanged"

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/fa7;->b:Landroid/os/Handler;

    new-instance v2, Lcom/shabakaty/downloader/md7;

    invoke-direct {v2, v0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/s57;Lcom/shabakaty/downloader/wf7;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final v0(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s57;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/shabakaty/downloader/s57;->N(JI)V

    return-void
.end method

.method public final x1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s57;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s57;->T(I)V

    return-void
.end method

.method public final y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s57;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s57;->R(I)V

    return-void
.end method
