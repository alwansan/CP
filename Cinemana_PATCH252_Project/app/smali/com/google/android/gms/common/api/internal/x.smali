.class public final Lcom/google/android/gms/common/api/internal/x;
.super Lcom/google/android/gms/common/api/internal/k;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/k;"
    }
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/yk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/yk4<",
            "Lcom/google/android/gms/common/api/a$b;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/zk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zk4<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/h9;


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/yk4;Lcom/shabakaty/downloader/zk4;Lcom/shabakaty/downloader/h9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/yk4<",
            "Lcom/google/android/gms/common/api/a$b;",
            "TResultT;>;",
            "Lcom/shabakaty/downloader/zk4<",
            "TResultT;>;",
            "Lcom/shabakaty/downloader/h9;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/k;-><init>(I)V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/x;->c:Lcom/shabakaty/downloader/zk4;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/x;->b:Lcom/shabakaty/downloader/yk4;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/x;->d:Lcom/shabakaty/downloader/h9;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 5
    iget-boolean p1, p2, Lcom/shabakaty/downloader/yk4;->b:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x;->c:Lcom/shabakaty/downloader/zk4;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/x;->d:Lcom/shabakaty/downloader/h9;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/i9;->a(Lcom/google/android/gms/common/api/Status;)Lcom/shabakaty/downloader/g9;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zk4;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/yc5;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x;->c:Lcom/shabakaty/downloader/zk4;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/yc5;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/ag6;

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/ag6;-><init>(Lcom/shabakaty/downloader/yc5;Lcom/shabakaty/downloader/zk4;)V

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v1}, Lcom/shabakaty/downloader/ye7;->o(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/k63;)Lcom/shabakaty/downloader/uk4;

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x;->c:Lcom/shabakaty/downloader/zk4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zk4;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/internal/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x;->b:Lcom/shabakaty/downloader/yk4;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/x;->c:Lcom/shabakaty/downloader/zk4;

    check-cast v0, Lcom/shabakaty/downloader/hb5;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/hb5;->c:Lcom/shabakaty/downloader/yk4$a;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    .line 6
    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/tq3;->r(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x;->c:Lcom/shabakaty/downloader/zk4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zk4;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/u;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x;->c:Lcom/shabakaty/downloader/zk4;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/x;->d:Lcom/shabakaty/downloader/h9;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/i9;->a(Lcom/google/android/gms/common/api/Status;)Lcom/shabakaty/downloader/g9;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zk4;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_2
    move-exception p1

    .line 12
    throw p1
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/c$a;)[Lcom/shabakaty/downloader/ia1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/x;->b:Lcom/shabakaty/downloader/yk4;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/yk4;->a:[Lcom/shabakaty/downloader/ia1;

    return-object p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/c$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/x;->b:Lcom/shabakaty/downloader/yk4;

    .line 2
    iget-boolean p1, p1, Lcom/shabakaty/downloader/yk4;->b:Z

    return p1
.end method
