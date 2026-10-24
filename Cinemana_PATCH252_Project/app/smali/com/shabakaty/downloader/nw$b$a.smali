.class public final Lcom/shabakaty/downloader/nw$b$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/nw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nw$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/yg5;->a:Lcom/google/android/gms/common/api/a$g;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->d(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s57;

    .line 3
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s57;->L(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "service error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/shabakaty/downloader/nw$e;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/yg5;->a:Lcom/google/android/gms/common/api/a$g;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->d(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s57;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lcom/shabakaty/downloader/yw;->d(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s57;->L(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/s57;->a0:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v1, p1, Lcom/shabakaty/downloader/s57;->a0:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gf5;

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/s57;->V()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p3, p2}, Lcom/shabakaty/downloader/gf5;->D1(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_0
    return-void

    .line 13
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "service error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/yg5;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->d(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s57;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gf5;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/s57;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-wide v1, p1, Lcom/shabakaty/downloader/s57;->j0:D

    iget-boolean p1, p1, Lcom/shabakaty/downloader/s57;->f0:Z

    invoke-interface {v0, p2, v1, v2, p1}, Lcom/shabakaty/downloader/gf5;->z0(ZDZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 5
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "service error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lcom/google/android/gms/common/api/GoogleApiClient;D)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/yg5;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->d(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s57;

    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/s57;->M(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "service error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
