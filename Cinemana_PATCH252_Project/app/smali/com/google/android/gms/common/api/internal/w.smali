.class public abstract Lcom/google/android/gms/common/api/internal/w;
.super Lcom/google/android/gms/common/api/internal/k;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/k;"
    }
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/zk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zk4<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/zk4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/zk4<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/k;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/w;->b:Lcom/shabakaty/downloader/zk4;

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->b:Lcom/shabakaty/downloader/zk4;

    new-instance v1, Lcom/shabakaty/downloader/g9;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/g9;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zk4;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->b:Lcom/shabakaty/downloader/zk4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zk4;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/internal/c$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/w;->h(Lcom/google/android/gms/common/api/internal/c$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->b:Lcom/shabakaty/downloader/zk4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zk4;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/u;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->b:Lcom/shabakaty/downloader/zk4;

    new-instance v1, Lcom/shabakaty/downloader/g9;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/g9;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zk4;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_2
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/u;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/w;->b:Lcom/shabakaty/downloader/zk4;

    new-instance v2, Lcom/shabakaty/downloader/g9;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/g9;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/zk4;->a(Ljava/lang/Exception;)Z

    .line 7
    throw p1
.end method

.method public abstract h(Lcom/google/android/gms/common/api/internal/c$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;)V"
        }
    .end annotation
.end method
