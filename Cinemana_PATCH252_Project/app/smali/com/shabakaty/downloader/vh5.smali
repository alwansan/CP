.class public final Lcom/shabakaty/downloader/vh5;
.super Lcom/google/android/gms/common/api/b;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/o57;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/b<",
        "Lcom/shabakaty/downloader/nw$c;",
        ">;",
        "Lcom/shabakaty/downloader/o57;"
    }
.end annotation


# static fields
.field public static final F:Lcom/shabakaty/downloader/pk2;

.field public static final G:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/shabakaty/downloader/nw$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lcom/google/android/gms/cast/CastDevice;

.field public final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/shabakaty/downloader/zk4<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/nw$e;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Lcom/shabakaty/downloader/nw$d;

.field public final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/na7;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/shabakaty/downloader/hl5;

.field public final k:Landroid/os/Handler;

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Lcom/shabakaty/downloader/zk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zk4<",
            "Lcom/shabakaty/downloader/nw$a;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/shabakaty/downloader/zk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zk4<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/atomic/AtomicLong;

.field public final r:Ljava/lang/Object;

.field public final s:Ljava/lang/Object;

.field public t:Lcom/shabakaty/downloader/nc;

.field public u:Ljava/lang/String;

.field public v:D

.field public w:Z

.field public x:I

.field public y:I

.field public z:Lcom/shabakaty/downloader/rg5;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "CastClient"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/vh5;->F:Lcom/shabakaty/downloader/pk2;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ql5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ql5;-><init>()V

    .line 3
    new-instance v1, Lcom/google/android/gms/common/api/a;

    sget-object v2, Lcom/shabakaty/downloader/yg5;->b:Lcom/google/android/gms/common/api/a$g;

    const-string v3, "Cast.API_CXLESS"

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v1, Lcom/shabakaty/downloader/vh5;->G:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/nw$c;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vh5;->G:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/b$a;->c:Lcom/google/android/gms/common/api/b$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b$a;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/hl5;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/hl5;-><init>(Lcom/shabakaty/downloader/vh5;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->j:Lcom/shabakaty/downloader/hl5;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->r:Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->s:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->E:Ljava/util/List;

    const-string p1, "CastOptions cannot be null"

    .line 7
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p2, Lcom/shabakaty/downloader/nw$c;->s:Lcom/shabakaty/downloader/nw$d;

    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->D:Lcom/shabakaty/downloader/nw$d;

    .line 9
    iget-object p1, p2, Lcom/shabakaty/downloader/nw$c;->r:Lcom/google/android/gms/cast/CastDevice;

    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->A:Lcom/google/android/gms/cast/CastDevice;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->B:Ljava/util/Map;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->C:Ljava/util/Map;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->q:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lcom/shabakaty/downloader/vh5;->l:I

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vh5;->n()D

    .line 15
    new-instance p1, Lcom/shabakaty/downloader/p36;

    .line 16
    iget-object p2, p0, Lcom/google/android/gms/common/api/b;->e:Landroid/os/Looper;

    .line 17
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/p36;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->k:Landroid/os/Handler;

    return-void
.end method

.method public static h(Lcom/shabakaty/downloader/vh5;JI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vh5;->B:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/vh5;->B:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/zk4;

    .line 3
    iget-object p0, p0, Lcom/shabakaty/downloader/vh5;->B:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    const/4 p0, 0x0

    .line 5
    iget-object p1, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p3}, Lcom/shabakaty/downloader/vh5;->l(I)Lcom/shabakaty/downloader/g9;

    move-result-object p0

    .line 7
    iget-object p1, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static i(Lcom/shabakaty/downloader/vh5;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vh5;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/vh5;->p:Lcom/shabakaty/downloader/zk4;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 4
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    .line 5
    invoke-direct {v3, p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 6
    iget-object p1, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/vh5;->l(I)Lcom/shabakaty/downloader/g9;

    move-result-object p1

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    .line 9
    :goto_0
    iput-object v2, p0, Lcom/shabakaty/downloader/vh5;->p:Lcom/shabakaty/downloader/zk4;

    .line 10
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static l(I)Lcom/shabakaty/downloader/g9;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/i9;->a(Lcom/google/android/gms/common/api/Status;)Lcom/shabakaty/downloader/g9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vh5;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not connected to device"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    return-void
.end method

.method public final f(Lcom/shabakaty/downloader/bg5;)Lcom/shabakaty/downloader/uk4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/bg5;",
            ")",
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->e:Landroid/os/Looper;

    const-string v1, "Listener must not be null"

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Looper must not be null"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/google/android/gms/common/api/internal/d;

    const-string v2, "castDeviceControllerListenerKey"

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/common/api/internal/d;-><init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, v1, Lcom/google/android/gms/common/api/internal/d;->b:Lcom/google/android/gms/common/api/internal/d$a;

    const-string v0, "Key must not be null"

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->i:Lcom/google/android/gms/common/api/internal/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v1}, Lcom/shabakaty/downloader/zk4;-><init>()V

    .line 9
    new-instance v2, Lcom/google/android/gms/common/api/internal/z;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/common/api/internal/z;-><init>(Lcom/google/android/gms/common/api/internal/d$a;Lcom/shabakaty/downloader/zk4;)V

    .line 10
    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    new-instance v3, Lcom/shabakaty/downloader/wa5;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v3, v2, v0, p0}, Lcom/shabakaty/downloader/wa5;-><init>(Lcom/google/android/gms/common/api/internal/u;ILcom/google/android/gms/common/api/b;)V

    const/16 v0, 0xd

    .line 12
    invoke-virtual {p1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    iget-object p1, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    return-object p1
.end method

.method public final g(Lcom/shabakaty/downloader/zk4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/zk4<",
            "Lcom/shabakaty/downloader/nw$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vh5;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/vh5;->o:Lcom/shabakaty/downloader/zk4;

    if-eqz v1, :cond_0

    const/16 v1, 0x7d2

    .line 3
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/vh5;->k(I)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->o:Lcom/shabakaty/downloader/zk4;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j()Lcom/shabakaty/downloader/uk4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/yk4;->a()Lcom/shabakaty/downloader/yk4$a;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ak5;->r:Lcom/shabakaty/downloader/tq3;

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yk4$a;->a()Lcom/shabakaty/downloader/yk4;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/api/b;->c(ILcom/shabakaty/downloader/yk4;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vh5;->m()V

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/vh5;->j:Lcom/shabakaty/downloader/hl5;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/vh5;->f(Lcom/shabakaty/downloader/bg5;)Lcom/shabakaty/downloader/uk4;

    return-object v0
.end method

.method public final k(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vh5;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/vh5;->o:Lcom/shabakaty/downloader/zk4;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/vh5;->l(I)Lcom/shabakaty/downloader/g9;

    move-result-object p1

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/vh5;->o:Lcom/shabakaty/downloader/zk4;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final m()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vh5;->F:Lcom/shabakaty/downloader/pk2;

    const-string v1, "removing all MessageReceivedCallbacks"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vh5;->C:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/vh5;->C:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n()D
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vh5;->A:Lcom/google/android/gms/cast/CastDevice;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastDevice;->E1(I)Z

    move-result v0

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vh5;->A:Lcom/google/android/gms/cast/CastDevice;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/CastDevice;->E1(I)Z

    move-result v0

    const-wide v3, 0x3fa999999999999aL    # 0.05

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/vh5;->A:Lcom/google/android/gms/cast/CastDevice;

    const/4 v5, 0x1

    .line 3
    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->E1(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/vh5;->A:Lcom/google/android/gms/cast/CastDevice;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/cast/CastDevice;->v:Ljava/lang/String;

    const-string v5, "Chromecast Audio"

    .line 6
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v3

    :cond_1
    return-wide v1

    :cond_2
    return-wide v3
.end method
