.class public final Lcom/shabakaty/downloader/s57;
.super Lcom/shabakaty/downloader/jq1;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/jq1<",
        "Lcom/shabakaty/downloader/gf5;",
        ">;"
    }
.end annotation


# static fields
.field public static final u0:Lcom/shabakaty/downloader/pk2;

.field public static final v0:Ljava/lang/Object;

.field public static final w0:Ljava/lang/Object;


# instance fields
.field public X:Lcom/shabakaty/downloader/nc;

.field public final Y:Lcom/google/android/gms/cast/CastDevice;

.field public final Z:Lcom/shabakaty/downloader/nw$d;

.field public final a0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/nw$e;",
            ">;"
        }
    .end annotation
.end field

.field public final b0:J

.field public final c0:Landroid/os/Bundle;

.field public d0:Lcom/shabakaty/downloader/fa7;

.field public e0:Ljava/lang/String;

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:Z

.field public j0:D

.field public k0:Lcom/shabakaty/downloader/rg5;

.field public l0:I

.field public m0:I

.field public final n0:Ljava/util/concurrent/atomic/AtomicLong;

.field public o0:Ljava/lang/String;

.field public p0:Ljava/lang/String;

.field public q0:Landroid/os/Bundle;

.field public final r0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/shabakaty/downloader/lj<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;"
        }
    .end annotation
.end field

.field public s0:Lcom/shabakaty/downloader/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/lj<",
            "Lcom/shabakaty/downloader/nw$a;",
            ">;"
        }
    .end annotation
.end field

.field public t0:Lcom/shabakaty/downloader/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/lj<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "CastClientImpl"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/s57;->v0:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/s57;->w0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/t30;Lcom/google/android/gms/cast/CastDevice;JLcom/shabakaty/downloader/nw$d;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)V
    .locals 8

    move-object v7, p0

    const/16 v3, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/jq1;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/shabakaty/downloader/t30;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)V

    move-object v0, p4

    .line 2
    iput-object v0, v7, Lcom/shabakaty/downloader/s57;->Y:Lcom/google/android/gms/cast/CastDevice;

    move-object v0, p7

    .line 3
    iput-object v0, v7, Lcom/shabakaty/downloader/s57;->Z:Lcom/shabakaty/downloader/nw$d;

    move-wide v0, p5

    .line 4
    iput-wide v0, v7, Lcom/shabakaty/downloader/s57;->b0:J

    move-object/from16 v0, p8

    .line 5
    iput-object v0, v7, Lcom/shabakaty/downloader/s57;->c0:Landroid/os/Bundle;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/shabakaty/downloader/s57;->a0:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v7, Lcom/shabakaty/downloader/s57;->n0:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/shabakaty/downloader/s57;->r0:Ljava/util/Map;

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s57;->U()V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s57;->X()D

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method public final F(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "in onPostInitHandler; statusCode=%d"

    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8fc

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v4, p0, Lcom/shabakaty/downloader/s57;->i0:Z

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/s57;->i0:Z

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/s57;->g0:Z

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/s57;->h0:Z

    :goto_1
    if-ne p1, v0, :cond_2

    .line 6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/s57;->q0:Landroid/os/Bundle;

    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 8
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/ij;->F(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s57;->a0:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->a0:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/nw$e;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gf5;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/gf5;->A0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const-string v2, "Error unregistering namespace (%s): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel namespace cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final M(D)V
    .locals 7

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/gf5;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s57;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-wide v4, p0, Lcom/shabakaty/downloader/s57;->j0:D

    iget-boolean v6, p0, Lcom/shabakaty/downloader/s57;->f0:Z

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/downloader/gf5;->D0(DDZ)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Volume cannot be "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final N(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s57;->r0:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->r0:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/lj;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 6
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/lj;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final O(Lcom/shabakaty/downloader/lj;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/lj<",
            "Lcom/shabakaty/downloader/nw$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s57;->v0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->s0:Lcom/shabakaty/downloader/lj;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/nc7;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x7d2

    const/4 v5, 0x0

    .line 4
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 5
    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/nc7;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/lj;->a(Ljava/lang/Object;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/s57;->s0:Lcom/shabakaty/downloader/lj;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final P(Ljava/lang/String;Lcom/shabakaty/downloader/lj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/lj<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/s57;->S(Lcom/shabakaty/downloader/lj;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/gf5;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s57;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/gf5;->O(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p1, 0x7e0

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s57;->T(I)V

    return-void
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/lj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/lj<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x80000

    if-gt v0, v1, :cond_1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/yw;->d(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/s57;->n0:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/s57;->r0:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gf5;

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s57;->V()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {p3, p1, p2, v0, v1}, Lcom/shabakaty/downloader/gf5;->S(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const/16 p1, 0x7e0

    .line 9
    invoke-virtual {p0, v0, v1, p1}, Lcom/shabakaty/downloader/s57;->N(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/s57;->r0:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    throw p1

    .line 12
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 13
    iget-object p3, p1, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v0, "Message send failed. Message exceeds maximum size"

    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message exceeds maximum size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The message payload cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Q0()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s57;->q0:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/shabakaty/downloader/s57;->q0:Landroid/os/Bundle;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final R(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s57;->v0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->s0:Lcom/shabakaty/downloader/lj;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/nc7;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/4 v4, 0x0

    .line 4
    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 5
    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/nc7;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/lj;->a(Ljava/lang/Object;)V

    .line 6
    iput-object v4, p0, Lcom/shabakaty/downloader/s57;->s0:Lcom/shabakaty/downloader/lj;

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final S(Lcom/shabakaty/downloader/lj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/lj<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s57;->w0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->t0:Lcom/shabakaty/downloader/lj;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x7d1

    const/4 v3, 0x0

    .line 4
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 5
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/lj;->a(Ljava/lang/Object;)V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/s57;->t0:Lcom/shabakaty/downloader/lj;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final T(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s57;->w0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->t0:Lcom/shabakaty/downloader/lj;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    .line 4
    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 5
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/lj;->a(Ljava/lang/Object;)V

    .line 6
    iput-object v3, p0, Lcom/shabakaty/downloader/s57;->t0:Lcom/shabakaty/downloader/lj;

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final U()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s57;->i0:Z

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lcom/shabakaty/downloader/s57;->l0:I

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/s57;->m0:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/s57;->X:Lcom/shabakaty/downloader/nc;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/s57;->e0:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/shabakaty/downloader/s57;->j0:D

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s57;->X()D

    .line 8
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s57;->f0:Z

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/s57;->k0:Lcom/shabakaty/downloader/rg5;

    return-void
.end method

.method public final V()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/s57;->i0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/s57;->d0:Lcom/shabakaty/downloader/fa7;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final W()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const-string v1, "removing all MessageReceivedCallbacks"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s57;->a0:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->a0:Ljava/util/Map;

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

.method public final X()D
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s57;->Y:Lcom/google/android/gms/cast/CastDevice;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastDevice;->E1(I)Z

    move-result v0

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s57;->Y:Lcom/google/android/gms/cast/CastDevice;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/CastDevice;->E1(I)Z

    move-result v0

    const-wide v3, 0x3fa999999999999aL    # 0.05

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/s57;->Y:Lcom/google/android/gms/cast/CastDevice;

    const/4 v5, 0x1

    .line 3
    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->E1(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/s57;->Y:Lcom/google/android/gms/cast/CastDevice;

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

.method public final synthetic f(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/gf5;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/gf5;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/xe5;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/xe5;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final i()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shabakaty/downloader/s57;->o0:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/shabakaty/downloader/s57;->p0:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s"

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->Y:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    iget-wide v1, p0, Lcom/shabakaty/downloader/s57;->b0:J

    const-string v3, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->c0:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 8
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/fa7;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/fa7;-><init>(Lcom/shabakaty/downloader/s57;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/s57;->d0:Lcom/shabakaty/downloader/fa7;

    .line 9
    new-instance v2, Lcom/google/android/gms/common/internal/BinderWrapper;

    invoke-direct {v2, v1}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    const-string v1, "listener"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->o0:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "last_application_id"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->p0:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "last_session_id"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    return-object v0
.end method

.method public final o(Lcom/shabakaty/downloader/gb0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ij;->o(Lcom/shabakaty/downloader/gb0;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s57;->W()V

    return-void
.end method

.method public final p()V
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/shabakaty/downloader/s57;->d0:Lcom/shabakaty/downloader/fa7;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->isConnected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "disconnect(); ServiceListener=%s, isConnected=%b"

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/s57;->d0:Lcom/shabakaty/downloader/fa7;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcom/shabakaty/downloader/s57;->d0:Lcom/shabakaty/downloader/fa7;

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/fa7;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/s57;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/s57;->U()V

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s57;->W()V

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gf5;

    .line 8
    invoke-interface {v0}, Lcom/shabakaty/downloader/gf5;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-super {p0}, Lcom/shabakaty/downloader/ij;->p()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 10
    :goto_1
    :try_start_1
    sget-object v1, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const-string v2, "Error while disconnecting the controller interface: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v0, v2, v4}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-super {p0}, Lcom/shabakaty/downloader/ij;->p()V

    return-void

    .line 12
    :goto_2
    invoke-super {p0}, Lcom/shabakaty/downloader/ij;->p()V

    .line 13
    throw v0

    :cond_2
    :goto_3
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "already disposed, so short-circuiting"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
