.class public final Lcom/shabakaty/downloader/yr;
.super Ljava/lang/Object;
.source "Camera2CameraImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/vt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/yr$d;,
        Lcom/shabakaty/downloader/yr$c;,
        Lcom/shabakaty/downloader/yr$f;,
        Lcom/shabakaty/downloader/yr$e;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Lcom/shabakaty/downloader/vv;

.field public C:Lcom/shabakaty/downloader/u14;

.field public final D:Ljava/util/concurrent/atomic/AtomicInteger;

.field public E:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public F:Lcom/shabakaty/downloader/ar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ar$a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/vv;",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public final H:Lcom/shabakaty/downloader/yr$c;

.field public final I:Lcom/shabakaty/downloader/gu;

.field public final J:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/vv;",
            ">;"
        }
    .end annotation
.end field

.field public K:Lcom/shabakaty/downloader/et2;

.field public final L:Lcom/shabakaty/downloader/wv;

.field public final M:Lcom/shabakaty/downloader/oj4$a;

.field public final N:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lcom/shabakaty/downloader/fx4;

.field public final s:Lcom/shabakaty/downloader/wt;

.field public final t:Ljava/util/concurrent/Executor;

.field public volatile u:Lcom/shabakaty/downloader/yr$e;

.field public final v:Lcom/shabakaty/downloader/dj2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/dj2<",
            "Lcom/shabakaty/downloader/vt$a;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lcom/shabakaty/downloader/sr;

.field public final x:Lcom/shabakaty/downloader/yr$f;

.field public final y:Lcom/shabakaty/downloader/zr;

.field public z:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wt;Ljava/lang/String;Lcom/shabakaty/downloader/zr;Lcom/shabakaty/downloader/gu;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v5, Lcom/shabakaty/downloader/yr$e;->r:Lcom/shabakaty/downloader/yr$e;

    iput-object v5, v1, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    .line 3
    new-instance v5, Lcom/shabakaty/downloader/dj2;

    invoke-direct {v5}, Lcom/shabakaty/downloader/dj2;-><init>()V

    iput-object v5, v1, Lcom/shabakaty/downloader/yr;->v:Lcom/shabakaty/downloader/dj2;

    const/4 v6, 0x0

    .line 4
    iput v6, v1, Lcom/shabakaty/downloader/yr;->A:I

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/u14;->a()Lcom/shabakaty/downloader/u14;

    move-result-object v7

    iput-object v7, v1, Lcom/shabakaty/downloader/yr;->C:Lcom/shabakaty/downloader/u14;

    .line 6
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, v1, Lcom/shabakaty/downloader/yr;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v1, Lcom/shabakaty/downloader/yr;->G:Ljava/util/Map;

    .line 8
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v1, Lcom/shabakaty/downloader/yr;->J:Ljava/util/Set;

    .line 9
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v1, Lcom/shabakaty/downloader/yr;->N:Ljava/util/Set;

    .line 10
    iput-object v0, v1, Lcom/shabakaty/downloader/yr;->s:Lcom/shabakaty/downloader/wt;

    .line 11
    iput-object v4, v1, Lcom/shabakaty/downloader/yr;->I:Lcom/shabakaty/downloader/gu;

    .line 12
    new-instance v7, Lcom/shabakaty/downloader/ds1;

    move-object/from16 v14, p6

    invoke-direct {v7, v14}, Lcom/shabakaty/downloader/ds1;-><init>(Landroid/os/Handler;)V

    .line 13
    new-instance v15, Lcom/shabakaty/downloader/w04;

    move-object/from16 v8, p5

    invoke-direct {v15, v8}, Lcom/shabakaty/downloader/w04;-><init>(Ljava/util/concurrent/Executor;)V

    .line 14
    iput-object v15, v1, Lcom/shabakaty/downloader/yr;->t:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v8, Lcom/shabakaty/downloader/yr$f;

    invoke-direct {v8, v1, v15, v7}, Lcom/shabakaty/downloader/yr$f;-><init>(Lcom/shabakaty/downloader/yr;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v8, v1, Lcom/shabakaty/downloader/yr;->x:Lcom/shabakaty/downloader/yr$f;

    .line 16
    new-instance v8, Lcom/shabakaty/downloader/fx4;

    invoke-direct {v8, v2}, Lcom/shabakaty/downloader/fx4;-><init>(Ljava/lang/String;)V

    iput-object v8, v1, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    .line 17
    sget-object v8, Lcom/shabakaty/downloader/vt$a;->w:Lcom/shabakaty/downloader/vt$a;

    .line 18
    iget-object v5, v5, Lcom/shabakaty/downloader/dj2;->a:Lcom/shabakaty/downloader/xv2;

    .line 19
    new-instance v9, Lcom/shabakaty/downloader/dj2$b;

    const/4 v13, 0x0

    invoke-direct {v9, v8, v13}, Lcom/shabakaty/downloader/dj2$b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 20
    invoke-virtual {v5, v9}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 21
    new-instance v5, Lcom/shabakaty/downloader/wv;

    invoke-direct {v5, v15}, Lcom/shabakaty/downloader/wv;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v5, v1, Lcom/shabakaty/downloader/yr;->L:Lcom/shabakaty/downloader/wv;

    .line 22
    new-instance v8, Lcom/shabakaty/downloader/vv;

    invoke-direct {v8}, Lcom/shabakaty/downloader/vv;-><init>()V

    iput-object v8, v1, Lcom/shabakaty/downloader/yr;->B:Lcom/shabakaty/downloader/vv;

    .line 23
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Lcom/shabakaty/downloader/wt;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/zs;

    move-result-object v9

    .line 24
    new-instance v12, Lcom/shabakaty/downloader/sr;

    new-instance v11, Lcom/shabakaty/downloader/yr$d;

    invoke-direct {v11, v1}, Lcom/shabakaty/downloader/yr$d;-><init>(Lcom/shabakaty/downloader/yr;)V

    .line 25
    iget-object v10, v3, Lcom/shabakaty/downloader/zr;->f:Lcom/shabakaty/downloader/al3;

    move-object v8, v12

    move-object/from16 v16, v10

    move-object v10, v7

    move-object/from16 v17, v11

    move-object v11, v15

    move-object v6, v12

    move-object/from16 v12, v17

    move-object v14, v13

    move-object/from16 v13, v16

    .line 26
    invoke-direct/range {v8 .. v13}, Lcom/shabakaty/downloader/sr;-><init>(Lcom/shabakaty/downloader/zs;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/dt$a;Lcom/shabakaty/downloader/al3;)V

    iput-object v6, v1, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    .line 27
    iput-object v3, v1, Lcom/shabakaty/downloader/yr;->y:Lcom/shabakaty/downloader/zr;

    .line 28
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/zr;->h(Lcom/shabakaty/downloader/sr;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/ns; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    new-instance v6, Lcom/shabakaty/downloader/oj4$a;

    .line 30
    invoke-virtual/range {p3 .. p3}, Lcom/shabakaty/downloader/zr;->g()I

    move-result v13

    move-object v8, v6

    move-object v9, v15

    move-object v10, v7

    move-object/from16 v11, p6

    move-object v12, v5

    invoke-direct/range {v8 .. v13}, Lcom/shabakaty/downloader/oj4$a;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Lcom/shabakaty/downloader/wv;I)V

    iput-object v6, v1, Lcom/shabakaty/downloader/yr;->M:Lcom/shabakaty/downloader/oj4$a;

    .line 31
    new-instance v3, Lcom/shabakaty/downloader/yr$c;

    invoke-direct {v3, v1, v2}, Lcom/shabakaty/downloader/yr$c;-><init>(Lcom/shabakaty/downloader/yr;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/shabakaty/downloader/yr;->H:Lcom/shabakaty/downloader/yr$c;

    .line 32
    iget-object v2, v4, Lcom/shabakaty/downloader/gu;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 33
    :try_start_1
    iget-object v5, v4, Lcom/shabakaty/downloader/gu;->d:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera is already registered: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 34
    iget-object v4, v4, Lcom/shabakaty/downloader/gu;->d:Ljava/util/Map;

    new-instance v5, Lcom/shabakaty/downloader/gu$a;

    invoke-direct {v5, v14, v15, v3}, Lcom/shabakaty/downloader/gu$a;-><init>(Lcom/shabakaty/downloader/vt$a;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/gu$b;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    iget-object v0, v0, Lcom/shabakaty/downloader/wt;->a:Lcom/shabakaty/downloader/wt$b;

    invoke-interface {v0, v15, v3}, Lcom/shabakaty/downloader/wt$b;->a(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void

    :catchall_0
    move-exception v0

    .line 37
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/shabakaty/downloader/ml3;->b(Lcom/shabakaty/downloader/ns;)Lcom/shabakaty/downloader/iu;

    move-result-object v0

    throw v0
.end method

.method public static q(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN ERROR"

    return-object p0

    :cond_0
    const-string p0, "ERROR_CAMERA_SERVICE"

    return-object p0

    :cond_1
    const-string p0, "ERROR_CAMERA_DEVICE"

    return-object p0

    :cond_2
    const-string p0, "ERROR_CAMERA_DISABLED"

    return-object p0

    :cond_3
    const-string p0, "ERROR_MAX_CAMERAS_IN_USE"

    return-object p0

    :cond_4
    const-string p0, "ERROR_CAMERA_IN_USE"

    return-object p0

    :cond_5
    const-string p0, "ERROR_NONE"

    return-object p0
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/pi2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ur;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ur;-><init>(Lcom/shabakaty/downloader/yr;I)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/cx4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->t:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/vr;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/vr;-><init>(Lcom/shabakaty/downloader/yr;Lcom/shabakaty/downloader/cx4;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Lcom/shabakaty/downloader/s43;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/s43<",
            "Lcom/shabakaty/downloader/vt$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->v:Lcom/shabakaty/downloader/dj2;

    return-object v0
.end method

.method public d()Lcom/shabakaty/downloader/dt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    return-object v0
.end method

.method public synthetic e()Lcom/shabakaty/downloader/st;
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/ut;->a(Lcom/shabakaty/downloader/vt;)Lcom/shabakaty/downloader/st;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/cx4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/sr;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget v2, v0, Lcom/shabakaty/downloader/sr;->m:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/shabakaty/downloader/sr;->m:I

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/cx4;

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->N:Ljava/util/Set;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->N:Ljava/util/Set;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->t:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/wr;

    invoke-direct {v1, p0, p1, v3}, Lcom/shabakaty/downloader/wr;-><init>(Lcom/shabakaty/downloader/yr;Ljava/util/Collection;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Unable to attach use cases."

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/sr;->d()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public g(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/cx4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/cx4;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->N:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->N:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->t:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/wr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/wr;-><init>(Lcom/shabakaty/downloader/yr;Ljava/util/Collection;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public h(Lcom/shabakaty/downloader/cx4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->t:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/vr;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/vr;-><init>(Lcom/shabakaty/downloader/yr;Lcom/shabakaty/downloader/cx4;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Lcom/shabakaty/downloader/cx4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->t:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/vr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/vr;-><init>(Lcom/shabakaty/downloader/yr;Lcom/shabakaty/downloader/cx4;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j(Lcom/shabakaty/downloader/cx4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->t:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/vr;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/vr;-><init>(Lcom/shabakaty/downloader/yr;Lcom/shabakaty/downloader/cx4;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fx4;->a()Lcom/shabakaty/downloader/u14$f;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u14$f;->b()Lcom/shabakaty/downloader/u14;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/u14;->f:Lcom/shabakaty/downloader/pv;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/pv;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u14;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u14;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/pv;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/et2;

    iget-object v1, p0, Lcom/shabakaty/downloader/yr;->y:Lcom/shabakaty/downloader/zr;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/zr;->b:Lcom/shabakaty/downloader/zs;

    .line 11
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/et2;-><init>(Lcom/shabakaty/downloader/zs;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    .line 14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MeteringRepeating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    .line 15
    iget-object v3, v3, Lcom/shabakaty/downloader/et2;->b:Lcom/shabakaty/downloader/u14;

    .line 16
    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/fx4;->f(Ljava/lang/String;Lcom/shabakaty/downloader/u14;)V

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    .line 19
    iget-object v2, v2, Lcom/shabakaty/downloader/et2;->b:Lcom/shabakaty/downloader/u14;

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/fx4;->e(Ljava/lang/String;Lcom/shabakaty/downloader/u14;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    if-ne v2, v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yr;->v()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-lt v2, v0, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yr;->v()V

    goto :goto_0

    :cond_3
    const-string v0, "mMeteringRepeating is ATTACHED, SessionConfig Surfaces: "

    const-string v1, ", CaptureConfig Surfaces: "

    .line 23
    invoke-static {v0, v3, v1, v2}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Camera2CameraImpl"

    .line 24
    invoke-static {v2, v0, v1}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public l()Lcom/shabakaty/downloader/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->y:Lcom/shabakaty/downloader/zr;

    return-object v0
.end method

.method public m(Z)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    sget-object v2, Lcom/shabakaty/downloader/yr$e;->v:Lcom/shabakaty/downloader/yr$e;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    sget-object v2, Lcom/shabakaty/downloader/yr$e;->x:Lcom/shabakaty/downloader/yr$e;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    sget-object v2, Lcom/shabakaty/downloader/yr$e;->w:Lcom/shabakaty/downloader/yr$e;

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/shabakaty/downloader/yr;->A:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "closeCamera should only be called in a CLOSING, RELEASING or REOPENING (with error) state. Current state: "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/shabakaty/downloader/yr;->A:I

    .line 2
    invoke-static {v5}, Lcom/shabakaty/downloader/yr;->q(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_4

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_4

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->y:Lcom/shabakaty/downloader/zr;

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zr;->g()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 7
    iget v1, v0, Lcom/shabakaty/downloader/yr;->A:I

    if-nez v1, :cond_4

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/vv;

    invoke-direct {v1}, Lcom/shabakaty/downloader/vv;-><init>()V

    .line 9
    iget-object v2, v0, Lcom/shabakaty/downloader/yr;->J:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/yr;->w(Z)V

    .line 11
    new-instance v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 13
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 14
    new-instance v4, Lcom/shabakaty/downloader/or;

    invoke-direct {v4, v3, v2}, Lcom/shabakaty/downloader/or;-><init>(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    .line 15
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 16
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 17
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v6

    .line 18
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 19
    new-instance v7, Lcom/shabakaty/downloader/ew2;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/ew2;-><init>(Ljava/util/Map;)V

    .line 20
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v8, Lcom/shabakaty/downloader/wz1;

    invoke-direct {v8, v3}, Lcom/shabakaty/downloader/wz1;-><init>(Landroid/view/Surface;)V

    .line 25
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    const/4 v3, 0x0

    const-string v8, "Start configAndClose."

    .line 26
    invoke-virtual {v0, v8, v3}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    new-instance v3, Lcom/shabakaty/downloader/u14;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    new-instance v19, Lcom/shabakaty/downloader/pv;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-static {v6}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v9

    .line 30
    sget-object v2, Lcom/shabakaty/downloader/lk4;->b:Lcom/shabakaty/downloader/lk4;

    .line 31
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 32
    iget-object v5, v7, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 33
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 34
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/lk4;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v6, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 35
    :cond_3
    new-instance v13, Lcom/shabakaty/downloader/lk4;

    invoke-direct {v13, v2}, Lcom/shabakaty/downloader/lk4;-><init>(Ljava/util/Map;)V

    move-object/from16 v7, v19

    .line 36
    invoke-direct/range {v7 .. v13}, Lcom/shabakaty/downloader/pv;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/o90;ILjava/util/List;ZLcom/shabakaty/downloader/lk4;)V

    move-object v13, v3

    .line 37
    invoke-direct/range {v13 .. v19}, Lcom/shabakaty/downloader/u14;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/pv;)V

    .line 38
    iget-object v2, v0, Lcom/shabakaty/downloader/yr;->z:Landroid/hardware/camera2/CameraDevice;

    .line 39
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v5, v0, Lcom/shabakaty/downloader/yr;->M:Lcom/shabakaty/downloader/oj4$a;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/oj4$a;->a()Lcom/shabakaty/downloader/oj4;

    move-result-object v5

    .line 41
    invoke-virtual {v1, v3, v2, v5}, Lcom/shabakaty/downloader/vv;->h(Lcom/shabakaty/downloader/u14;Landroid/hardware/camera2/CameraDevice;Lcom/shabakaty/downloader/oj4;)Lcom/shabakaty/downloader/pi2;

    move-result-object v2

    .line 42
    new-instance v3, Lcom/shabakaty/downloader/pr;

    invoke-direct {v3, v0, v1, v4}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/yr;Lcom/shabakaty/downloader/vv;Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->t:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3, v1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_4

    .line 43
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/yr;->w(Z)V

    .line 44
    :goto_4
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->B:Lcom/shabakaty/downloader/vv;

    .line 45
    iget-object v2, v1, Lcom/shabakaty/downloader/vv;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 46
    iget-object v2, v1, Lcom/shabakaty/downloader/vv;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/pv;

    .line 47
    iget-object v3, v3, Lcom/shabakaty/downloader/pv;->d:Ljava/util/List;

    .line 48
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ps;

    .line 49
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ps;->a()V

    goto :goto_5

    .line 50
    :cond_6
    iget-object v1, v1, Lcom/shabakaty/downloader/vv;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_7
    return-void
.end method

.method public final n()Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fx4;->a()Lcom/shabakaty/downloader/u14$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/u14$f;->b()Lcom/shabakaty/downloader/u14;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/u14;->b:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->x:Lcom/shabakaty/downloader/yr$f;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->L:Lcom/shabakaty/downloader/wv;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/wv;->g:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/lt;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lt;-><init>()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraDevice$StateCallback;

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/kt;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kt;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yr;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{%s} %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2CameraImpl"

    .line 2
    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/yr$e;->v:Lcom/shabakaty/downloader/yr$e;

    iget-object v1, p0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    sget-object v2, Lcom/shabakaty/downloader/yr$e;->x:Lcom/shabakaty/downloader/yr$e;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/yr;->G:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 4
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 5
    iput-object v2, p0, Lcom/shabakaty/downloader/yr;->z:Landroid/hardware/camera2/CameraDevice;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    if-ne v1, v0, :cond_2

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/yr$e;->r:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/yr;->x(Lcom/shabakaty/downloader/yr$e;)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->s:Lcom/shabakaty/downloader/wt;

    iget-object v1, p0, Lcom/shabakaty/downloader/yr;->H:Lcom/shabakaty/downloader/yr$c;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/wt;->a:Lcom/shabakaty/downloader/wt$b;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/wt$b;->b(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/yr$e;->y:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/yr;->x(Lcom/shabakaty/downloader/yr$e;)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->F:Lcom/shabakaty/downloader/ar$a;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    .line 13
    iput-object v2, p0, Lcom/shabakaty/downloader/yr;->F:Lcom/shabakaty/downloader/ar$a;

    :cond_3
    :goto_2
    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->G:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->J:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s(Z)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/yr;->x:Lcom/shabakaty/downloader/yr$f;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/yr$f;->e:Lcom/shabakaty/downloader/yr$f$a;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p1, Lcom/shabakaty/downloader/yr$f$a;->a:J

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/yr;->x:Lcom/shabakaty/downloader/yr$f;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/yr$f;->a()Z

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/yr;->H:Lcom/shabakaty/downloader/yr$c;

    .line 6
    iget-boolean p1, p1, Lcom/shabakaty/downloader/yr$c;->b:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/yr;->I:Lcom/shabakaty/downloader/gu;

    .line 8
    iget-object v1, p1, Lcom/shabakaty/downloader/gu;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p1, Lcom/shabakaty/downloader/gu;->d:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/gu$a;

    const-string v3, "Camera must first be registered with registerCamera()"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "CameraStateRegistry"

    .line 10
    invoke-static {v3}, Lcom/shabakaty/downloader/vk2;->c(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 11
    iget-object v3, p1, Lcom/shabakaty/downloader/gu;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 12
    iget-object v3, p1, Lcom/shabakaty/downloader/gu;->a:Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "tryOpenCamera(%s) [Available Cameras: %d, Already Open: %b (Previous state: %s)]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v5

    iget v9, p1, Lcom/shabakaty/downloader/gu;->e:I

    .line 13
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x2

    .line 14
    iget-object v10, v2, Lcom/shabakaty/downloader/gu$a;->a:Lcom/shabakaty/downloader/vt$a;

    .line 15
    invoke-static {v10}, Lcom/shabakaty/downloader/gu;->a(Lcom/shabakaty/downloader/vt$a;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 16
    iget-object v10, v2, Lcom/shabakaty/downloader/gu$a;->a:Lcom/shabakaty/downloader/vt$a;

    aput-object v10, v8, v9

    .line 17
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_1
    iget v3, p1, Lcom/shabakaty/downloader/gu;->e:I

    if-gtz v3, :cond_3

    .line 19
    iget-object v3, v2, Lcom/shabakaty/downloader/gu$a;->a:Lcom/shabakaty/downloader/vt$a;

    .line 20
    invoke-static {v3}, Lcom/shabakaty/downloader/gu;->a(Lcom/shabakaty/downloader/vt$a;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 21
    :cond_3
    :goto_0
    sget-object v3, Lcom/shabakaty/downloader/vt$a;->t:Lcom/shabakaty/downloader/vt$a;

    .line 22
    iput-object v3, v2, Lcom/shabakaty/downloader/gu$a;->a:Lcom/shabakaty/downloader/vt$a;

    const/4 v2, 0x1

    :goto_1
    const-string v3, "CameraStateRegistry"

    .line 23
    invoke-static {v3}, Lcom/shabakaty/downloader/vk2;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    iget-object v3, p1, Lcom/shabakaty/downloader/gu;->a:Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, " --> %s"

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    const-string v8, "SUCCESS"

    goto :goto_2

    :cond_4
    const-string v8, "FAIL"

    :goto_2
    aput-object v8, v4, v5

    .line 25
    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CameraStateRegistry"

    .line 27
    iget-object v4, p1, Lcom/shabakaty/downloader/gu;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v3, v4, v0}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 29
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gu;->b()V

    .line 30
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_7

    goto :goto_4

    .line 31
    :cond_7
    sget-object p1, Lcom/shabakaty/downloader/yr$e;->t:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yr;->x(Lcom/shabakaty/downloader/yr$e;)V

    const-string p1, "Opening camera."

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :try_start_1
    iget-object p1, p0, Lcom/shabakaty/downloader/yr;->s:Lcom/shabakaty/downloader/wt;

    iget-object v1, p0, Lcom/shabakaty/downloader/yr;->y:Lcom/shabakaty/downloader/zr;

    .line 34
    iget-object v1, v1, Lcom/shabakaty/downloader/zr;->a:Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->t:Ljava/util/concurrent/Executor;

    .line 36
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yr;->n()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v3

    .line 37
    iget-object p1, p1, Lcom/shabakaty/downloader/wt;->a:Lcom/shabakaty/downloader/wt$b;

    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/wt$b;->d(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    :try_end_1
    .catch Lcom/shabakaty/downloader/ns; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v1, "Unable to open camera due to "

    .line 38
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    sget-object p1, Lcom/shabakaty/downloader/yr$e;->w:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yr;->x(Lcom/shabakaty/downloader/yr$e;)V

    .line 41
    iget-object p1, p0, Lcom/shabakaty/downloader/yr;->x:Lcom/shabakaty/downloader/yr$f;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/yr$f;->b()V

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v1, "Unable to open camera due to "

    .line 42
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iget p1, p1, Lcom/shabakaty/downloader/ns;->r:I

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_8

    goto :goto_3

    .line 45
    :cond_8
    sget-object p1, Lcom/shabakaty/downloader/yr$e;->r:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yr;->x(Lcom/shabakaty/downloader/yr$e;)V

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 46
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_9
    :goto_4
    const-string p1, "No cameras available. Waiting for available camera before opening camera."

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    sget-object p1, Lcom/shabakaty/downloader/yr$e;->s:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yr;->x(Lcom/shabakaty/downloader/yr$e;)V

    return-void
.end method

.method public t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    sget-object v1, Lcom/shabakaty/downloader/yr$e;->u:Lcom/shabakaty/downloader/yr$e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fx4;->a()Lcom/shabakaty/downloader/u14$f;

    move-result-object v0

    .line 4
    iget-boolean v4, v0, Lcom/shabakaty/downloader/u14$f;->h:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/shabakaty/downloader/u14$f;->g:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    const-string v0, "Unable to create capture session due to conflicting configurations"

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/yr;->B:Lcom/shabakaty/downloader/vv;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u14$f;->b()Lcom/shabakaty/downloader/u14;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->z:Landroid/hardware/camera2/CameraDevice;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/yr;->M:Lcom/shabakaty/downloader/oj4$a;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/oj4$a;->a()Lcom/shabakaty/downloader/oj4;

    move-result-object v3

    .line 10
    invoke-virtual {v1, v0, v2, v3}, Lcom/shabakaty/downloader/vv;->h(Lcom/shabakaty/downloader/u14;Landroid/hardware/camera2/CameraDevice;Lcom/shabakaty/downloader/oj4;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/yr$b;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/yr$b;-><init>(Lcom/shabakaty/downloader/yr;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->t:Ljava/util/concurrent/Executor;

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    invoke-interface {v0, v3, v2}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->y:Lcom/shabakaty/downloader/zr;

    .line 2
    iget-object v2, v2, Lcom/shabakaty/downloader/zr;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Camera@%x[id=%s]"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/shabakaty/downloader/vv;Z)Lcom/shabakaty/downloader/pi2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vv;",
            "Z)",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vv$c;->y:Lcom/shabakaty/downloader/vv$c;

    iget-object v1, p1, Lcom/shabakaty/downloader/vv;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v2, p1, Lcom/shabakaty/downloader/vv;->g:Lcom/shabakaty/downloader/u14;

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p1, Lcom/shabakaty/downloader/vv;->i:Lcom/shabakaty/downloader/ot;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ot;->c()Lcom/shabakaty/downloader/ot$a;

    move-result-object v2

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/ot$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/nt;

    .line 8
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    .line 10
    :try_start_1
    invoke-virtual {p1, v5}, Lcom/shabakaty/downloader/vv;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/vv;->d(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v5, "CaptureSession"

    const-string v6, "Unable to issue the request before close the capture session"

    .line 11
    invoke-static {v5, v6, v2}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :cond_2
    :goto_1
    iget-object v2, p1, Lcom/shabakaty/downloader/vv;->e:Lcom/shabakaty/downloader/oj4;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Opener shouldn\'t null in state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, p1, Lcom/shabakaty/downloader/vv;->e:Lcom/shabakaty/downloader/oj4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/oj4;->a()Z

    .line 14
    sget-object v2, Lcom/shabakaty/downloader/vv$c;->w:Lcom/shabakaty/downloader/vv$c;

    iput-object v2, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    .line 15
    iput-object v4, p1, Lcom/shabakaty/downloader/vv;->g:Lcom/shabakaty/downloader/u14;

    goto :goto_2

    .line 16
    :cond_3
    iget-object v2, p1, Lcom/shabakaty/downloader/vv;->e:Lcom/shabakaty/downloader/oj4;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Opener shouldn\'t null in state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v2, p1, Lcom/shabakaty/downloader/vv;->e:Lcom/shabakaty/downloader/oj4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/oj4;->a()Z

    .line 18
    :cond_4
    iput-object v0, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    .line 19
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    iget-object v2, p1, Lcom/shabakaty/downloader/vv;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 21
    :try_start_3
    iget-object v1, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 22
    :pswitch_0
    iget-object v0, p1, Lcom/shabakaty/downloader/vv;->f:Lcom/shabakaty/downloader/gj4;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    .line 23
    :try_start_4
    invoke-interface {v0}, Lcom/shabakaty/downloader/gj4;->d()V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p2

    :try_start_5
    const-string v0, "CaptureSession"

    const-string v1, "Unable to abort captures."

    .line 24
    invoke-static {v0, v1, p2}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_5
    :goto_3
    iget-object p2, p1, Lcom/shabakaty/downloader/vv;->f:Lcom/shabakaty/downloader/gj4;

    invoke-interface {p2}, Lcom/shabakaty/downloader/gj4;->close()V

    .line 26
    :cond_6
    :pswitch_1
    sget-object p2, Lcom/shabakaty/downloader/vv$c;->x:Lcom/shabakaty/downloader/vv$c;

    iput-object p2, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    .line 27
    iget-object p2, p1, Lcom/shabakaty/downloader/vv;->e:Lcom/shabakaty/downloader/oj4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Opener shouldn\'t null in state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p2, p1, Lcom/shabakaty/downloader/vv;->e:Lcom/shabakaty/downloader/oj4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/oj4;->a()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 29
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vv;->b()V

    goto :goto_4

    .line 30
    :cond_7
    :pswitch_2
    iget-object p2, p1, Lcom/shabakaty/downloader/vv;->m:Lcom/shabakaty/downloader/pi2;

    if-nez p2, :cond_8

    .line 31
    new-instance p2, Lcom/shabakaty/downloader/uv;

    invoke-direct {p2, p1, v3}, Lcom/shabakaty/downloader/uv;-><init>(Lcom/shabakaty/downloader/vv;I)V

    invoke-static {p2}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object p2

    iput-object p2, p1, Lcom/shabakaty/downloader/vv;->m:Lcom/shabakaty/downloader/pi2;

    .line 32
    :cond_8
    iget-object p2, p1, Lcom/shabakaty/downloader/vv;->m:Lcom/shabakaty/downloader/pi2;

    monitor-exit v2

    goto :goto_5

    .line 33
    :pswitch_3
    iget-object p2, p1, Lcom/shabakaty/downloader/vv;->e:Lcom/shabakaty/downloader/oj4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Opener shouldn\'t null in state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p2, p1, Lcom/shabakaty/downloader/vv;->e:Lcom/shabakaty/downloader/oj4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/oj4;->a()Z

    .line 35
    :pswitch_4
    iput-object v0, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    goto :goto_4

    .line 36
    :pswitch_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release() should not be possible in state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :goto_4
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 38
    invoke-static {v4}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object p2

    :goto_5
    const-string v0, "Releasing session in state "

    .line 39
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0, v4}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->G:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/shabakaty/downloader/yr$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/yr$a;-><init>(Lcom/shabakaty/downloader/yr;Lcom/shabakaty/downloader/vv;)V

    .line 43
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 44
    new-instance v1, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {v1, p2, v0}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    invoke-interface {p2, v1, p1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 45
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    .line 46
    :cond_9
    :try_start_7
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() should not be possible in state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p1

    .line 47
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final v()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MeteringRepeating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/fx4;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, v0, Lcom/shabakaty/downloader/fx4;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/fx4$b;

    const/4 v4, 0x0

    .line 6
    iput-boolean v4, v3, Lcom/shabakaty/downloader/fx4$b;->b:Z

    .line 7
    iget-boolean v3, v3, Lcom/shabakaty/downloader/fx4$b;->c:Z

    if-nez v3, :cond_1

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/fx4;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fx4;->g(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MeteringRepeating clear!"

    const/4 v3, 0x0

    .line 13
    invoke-static {v2, v1, v3}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    iget-object v1, v0, Lcom/shabakaty/downloader/et2;->a:Lcom/shabakaty/downloader/hp0;

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v1}, Lcom/shabakaty/downloader/hp0;->a()V

    .line 16
    :cond_2
    iput-object v3, v0, Lcom/shabakaty/downloader/et2;->a:Lcom/shabakaty/downloader/hp0;

    .line 17
    iput-object v3, p0, Lcom/shabakaty/downloader/yr;->K:Lcom/shabakaty/downloader/et2;

    :cond_3
    return-void
.end method

.method public w(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->B:Lcom/shabakaty/downloader/vv;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    const-string v0, "Resetting Capture Session"

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->B:Lcom/shabakaty/downloader/vv;

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/vv;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/vv;->g:Lcom/shabakaty/downloader/u14;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-object v3, v0, Lcom/shabakaty/downloader/vv;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 8
    :try_start_1
    iget-object v1, v0, Lcom/shabakaty/downloader/vv;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    new-instance v3, Lcom/shabakaty/downloader/vv;

    invoke-direct {v3}, Lcom/shabakaty/downloader/vv;-><init>()V

    iput-object v3, p0, Lcom/shabakaty/downloader/yr;->B:Lcom/shabakaty/downloader/vv;

    .line 10
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/vv;->i(Lcom/shabakaty/downloader/u14;)V

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->B:Lcom/shabakaty/downloader/vv;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/vv;->d(Ljava/util/List;)V

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/yr;->u(Lcom/shabakaty/downloader/vv;Z)Lcom/shabakaty/downloader/pi2;

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public x(Lcom/shabakaty/downloader/yr$e;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vt$a;->y:Lcom/shabakaty/downloader/vt$a;

    sget-object v1, Lcom/shabakaty/downloader/vt$a;->s:Lcom/shabakaty/downloader/vt$a;

    sget-object v2, Lcom/shabakaty/downloader/vt$a;->t:Lcom/shabakaty/downloader/vt$a;

    const-string v3, "Transitioning camera internal state: "

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2
    invoke-virtual {p0, v3, v4}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object p1, v0

    goto :goto_0

    .line 6
    :pswitch_1
    sget-object p1, Lcom/shabakaty/downloader/vt$a;->x:Lcom/shabakaty/downloader/vt$a;

    goto :goto_0

    .line 7
    :pswitch_2
    sget-object p1, Lcom/shabakaty/downloader/vt$a;->v:Lcom/shabakaty/downloader/vt$a;

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object p1, Lcom/shabakaty/downloader/vt$a;->u:Lcom/shabakaty/downloader/vt$a;

    goto :goto_0

    :pswitch_4
    move-object p1, v2

    goto :goto_0

    :pswitch_5
    move-object p1, v1

    goto :goto_0

    .line 9
    :pswitch_6
    sget-object p1, Lcom/shabakaty/downloader/vt$a;->w:Lcom/shabakaty/downloader/vt$a;

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/yr;->I:Lcom/shabakaty/downloader/gu;

    .line 11
    iget-object v5, v3, Lcom/shabakaty/downloader/gu;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 12
    :try_start_0
    iget v6, v3, Lcom/shabakaty/downloader/gu;->e:I

    const/4 v7, 0x1

    if-ne p1, v0, :cond_1

    .line 13
    iget-object v0, v3, Lcom/shabakaty/downloader/gu;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gu$a;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v3}, Lcom/shabakaty/downloader/gu;->b()V

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/gu$a;->a:Lcom/shabakaty/downloader/vt$a;

    goto :goto_3

    :cond_0
    move-object v0, v4

    goto :goto_3

    .line 16
    :cond_1
    iget-object v0, v3, Lcom/shabakaty/downloader/gu;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gu$a;

    const-string v8, "Cannot update state of camera which has not yet been registered. Register with CameraAvailabilityRegistry.registerCamera()"

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v8, v0, Lcom/shabakaty/downloader/gu$a;->a:Lcom/shabakaty/downloader/vt$a;

    .line 18
    iput-object p1, v0, Lcom/shabakaty/downloader/gu$a;->a:Lcom/shabakaty/downloader/vt$a;

    if-ne p1, v2, :cond_4

    .line 19
    invoke-static {p1}, Lcom/shabakaty/downloader/gu;->a(Lcom/shabakaty/downloader/vt$a;)Z

    move-result v0

    if-nez v0, :cond_3

    if-ne v8, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const-string v2, "Cannot mark camera as opening until camera was successful at calling CameraAvailabilityRegistry.tryOpen()"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    :cond_4
    if-eq v8, p1, :cond_5

    .line 20
    invoke-virtual {v3}, Lcom/shabakaty/downloader/gu;->b()V

    :cond_5
    move-object v0, v8

    :goto_3
    if-ne v0, p1, :cond_6

    .line 21
    monitor-exit v5

    goto/16 :goto_7

    :cond_6
    if-ge v6, v7, :cond_8

    .line 22
    iget v0, v3, Lcom/shabakaty/downloader/gu;->e:I

    if-lez v0, :cond_8

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v2, v3, Lcom/shabakaty/downloader/gu;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/gu$a;

    .line 26
    iget-object v6, v6, Lcom/shabakaty/downloader/gu$a;->a:Lcom/shabakaty/downloader/vt$a;

    if-ne v6, v1, :cond_7

    .line 27
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/gu$a;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    if-ne p1, v1, :cond_9

    .line 28
    iget v0, v3, Lcom/shabakaty/downloader/gu;->e:I

    if-lez v0, :cond_9

    .line 29
    iget-object v0, v3, Lcom/shabakaty/downloader/gu;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gu$a;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v0, v4

    .line 30
    :cond_a
    :goto_5
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_b

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gu$a;

    .line 32
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :try_start_1
    iget-object v2, v1, Lcom/shabakaty/downloader/gu$a;->b:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Lcom/shabakaty/downloader/gu$a;->c:Lcom/shabakaty/downloader/gu$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/shabakaty/downloader/rr;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/gu$b;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    const-string v2, "CameraStateRegistry"

    const-string v3, "Unable to notify camera."

    .line 34
    invoke-static {v2, v3, v1}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 35
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->v:Lcom/shabakaty/downloader/dj2;

    .line 36
    iget-object v0, v0, Lcom/shabakaty/downloader/dj2;->a:Lcom/shabakaty/downloader/xv2;

    .line 37
    new-instance v1, Lcom/shabakaty/downloader/dj2$b;

    invoke-direct {v1, p1, v4}, Lcom/shabakaty/downloader/dj2$b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 39
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/cx4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fx4;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/cx4;

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/fx4;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v6, v2, Lcom/shabakaty/downloader/cx4;->k:Lcom/shabakaty/downloader/u14;

    .line 8
    invoke-virtual {v4, v5, v6}, Lcom/shabakaty/downloader/fx4;->f(Ljava/lang/String;Lcom/shabakaty/downloader/u14;)V

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Failed to attach a detached use case"

    .line 10
    invoke-virtual {p0, v2, v3}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-string p1, "Use cases ["

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] now ATTACHED"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1, v3}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/sr;->i(Z)V

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    .line 16
    iget-object v2, v0, Lcom/shabakaty/downloader/sr;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 17
    :try_start_1
    iget v4, v0, Lcom/shabakaty/downloader/sr;->m:I

    add-int/2addr v4, p1

    iput v4, v0, Lcom/shabakaty/downloader/sr;->m:I

    .line 18
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 19
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yr;->k()V

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yr;->z()V

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/yr;->w(Z)V

    .line 22
    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    sget-object v4, Lcom/shabakaty/downloader/yr$e;->u:Lcom/shabakaty/downloader/yr$e;

    if-ne v2, v4, :cond_4

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yr;->t()V

    goto :goto_3

    .line 24
    :cond_4
    iget-object v2, p0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x4

    if-eq v2, v0, :cond_5

    const-string p1, "open() ignored due to being in state: "

    .line 25
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1, v3}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 27
    :cond_5
    sget-object v0, Lcom/shabakaty/downloader/yr$e;->w:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/yr;->x(Lcom/shabakaty/downloader/yr$e;)V

    .line 28
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yr;->r()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/shabakaty/downloader/yr;->A:I

    if-nez v0, :cond_8

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->z:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    const-string v0, "Camera Device should be open if session close is not complete"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 30
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/yr;->x(Lcom/shabakaty/downloader/yr$e;)V

    .line 31
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yr;->t()V

    goto :goto_3

    .line 32
    :cond_7
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/yr;->s(Z)V

    .line 33
    :cond_8
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/cx4;

    .line 34
    instance-of v1, v0, Lcom/shabakaty/downloader/if3;

    if-eqz v1, :cond_9

    .line 35
    iget-object p1, v0, Lcom/shabakaty/downloader/cx4;->g:Landroid/util/Size;

    if-eqz p1, :cond_a

    .line 36
    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 37
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Rational;-><init>(II)V

    .line 38
    iget-object p1, p0, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method public z()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/u14$f;

    invoke-direct {v1}, Lcom/shabakaty/downloader/u14$f;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/fx4;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/fx4$b;

    .line 6
    iget-boolean v6, v5, Lcom/shabakaty/downloader/fx4$b;->c:Z

    if-eqz v6, :cond_0

    .line 7
    iget-boolean v6, v5, Lcom/shabakaty/downloader/fx4$b;->b:Z

    if-eqz v6, :cond_0

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    iget-object v5, v5, Lcom/shabakaty/downloader/fx4$b;->a:Lcom/shabakaty/downloader/u14;

    .line 10
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/u14$f;->a(Lcom/shabakaty/downloader/u14;)V

    .line 11
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active and attached use case: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for camera: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/shabakaty/downloader/fx4;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "UseCaseAttachState"

    .line 13
    invoke-static {v3, v0, v2}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    iget-boolean v0, v1, Lcom/shabakaty/downloader/u14$f;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/shabakaty/downloader/u14$f;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->C:Lcom/shabakaty/downloader/u14;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/u14$f;->a(Lcom/shabakaty/downloader/u14;)V

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/u14$f;->b()Lcom/shabakaty/downloader/u14;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/yr;->B:Lcom/shabakaty/downloader/vv;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/vv;->i(Lcom/shabakaty/downloader/u14;)V

    goto :goto_2

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/yr;->B:Lcom/shabakaty/downloader/vv;

    iget-object v1, p0, Lcom/shabakaty/downloader/yr;->C:Lcom/shabakaty/downloader/u14;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vv;->i(Lcom/shabakaty/downloader/u14;)V

    :goto_2
    return-void
.end method
