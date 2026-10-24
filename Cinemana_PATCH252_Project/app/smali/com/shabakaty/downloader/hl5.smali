.class public final Lcom/shabakaty/downloader/hl5;
.super Lcom/shabakaty/downloader/pf5;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/vh5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vh5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    invoke-direct {p0}, Lcom/shabakaty/downloader/pf5;-><init>()V

    return-void
.end method


# virtual methods
.method public final G(Ljava/lang/String;DZ)V
    .locals 0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/vh5;->F:Lcom/shabakaty/downloader/pk2;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Deprecated callback: \"onStatusReceived\""

    .line 2
    invoke-virtual {p1, p3, p2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final H1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vh5;->F:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "Receive (type=text, ns=%s) %s"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->k:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/so5;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/hl5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final V1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->k:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/zl5;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/zl5;-><init>(Lcom/shabakaty/downloader/hl5;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final X1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/vh5;->i(Lcom/shabakaty/downloader/vh5;I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/vh5;->D:Lcom/shabakaty/downloader/nw$d;

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->k:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/zl5;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/zl5;-><init>(Lcom/shabakaty/downloader/hl5;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a2(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/shabakaty/downloader/vh5;->h(Lcom/shabakaty/downloader/vh5;JI)V

    return-void
.end method

.method public final j(Lcom/shabakaty/downloader/nc;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/vh5;->t:Lcom/shabakaty/downloader/nc;

    .line 3
    iput-object p2, v0, Lcom/shabakaty/downloader/vh5;->u:Ljava/lang/String;

    .line 4
    new-instance v7, Lcom/shabakaty/downloader/nc7;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-direct {v2, v1, v8}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/nc7;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/shabakaty/downloader/nc;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    iget-object p1, v0, Lcom/shabakaty/downloader/vh5;->r:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p2, v0, Lcom/shabakaty/downloader/vh5;->o:Lcom/shabakaty/downloader/zk4;

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {p2, v7}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    .line 10
    :cond_0
    iput-object v8, v0, Lcom/shabakaty/downloader/vh5;->o:Lcom/shabakaty/downloader/zk4;

    .line 11
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final k(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->k:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/zl5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/zl5;-><init>(Lcom/shabakaty/downloader/hl5;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final m(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->k:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/zl5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/zl5;-><init>(Lcom/shabakaty/downloader/hl5;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final m1(Ljava/lang/String;[B)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vh5;->F:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 2
    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final n1(Lcom/shabakaty/downloader/ee5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->k:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/md7;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/hl5;Lcom/shabakaty/downloader/ee5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final t(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/vh5;->i(Lcom/shabakaty/downloader/vh5;I)V

    return-void
.end method

.method public final t1(Lcom/shabakaty/downloader/wf7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->k:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/md7;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/hl5;Lcom/shabakaty/downloader/wf7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final v0(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    invoke-static {p1, p2, p3, p4}, Lcom/shabakaty/downloader/vh5;->h(Lcom/shabakaty/downloader/vh5;JI)V

    return-void
.end method

.method public final x1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/vh5;->i(Lcom/shabakaty/downloader/vh5;I)V

    return-void
.end method

.method public final y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vh5;->k(I)V

    return-void
.end method
