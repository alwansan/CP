.class public final Lcom/shabakaty/downloader/di6;
.super Lcom/shabakaty/downloader/k46;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# instance fields
.field public final a:Lcom/shabakaty/downloader/uw6;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uw6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/k46;-><init>()V

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/shabakaty/downloader/di6;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final B(Lcom/shabakaty/downloader/ve5;Lcom/shabakaty/downloader/ma7;)V
    .locals 2

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 3
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    new-instance v0, Lcom/shabakaty/downloader/ve5;

    .line 5
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ve5;-><init>(Lcom/shabakaty/downloader/ve5;)V

    .line 6
    iget-object p1, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    iput-object p1, v0, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    new-instance p1, Lcom/shabakaty/downloader/so5;

    .line 7
    invoke-direct {p1, p0, v0, p2}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ve5;Lcom/shabakaty/downloader/ma7;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final E1(Lcom/shabakaty/downloader/ma7;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/sh6;

    invoke-direct {v2, v0, p1}, Lcom/shabakaty/downloader/sh6;-><init>(Lcom/shabakaty/downloader/uw6;Lcom/shabakaty/downloader/ma7;)V

    .line 3
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/de6;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    check-cast v1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 8
    invoke-virtual {v0, v2, p1, v1}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final I0(Lcom/shabakaty/downloader/ek5;Ljava/lang/String;)[B
    .locals 11

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p2, v0}, Lcom/shabakaty/downloader/di6;->g2(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/uw6;->N()Lcom/shabakaty/downloader/e66;

    move-result-object v2

    iget-object v3, p1, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Log and bundle. event"

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    .line 11
    div-long/2addr v1, v3

    iget-object v5, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 12
    invoke-virtual {v5}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v5

    new-instance v6, Lcom/shabakaty/downloader/bt5;

    invoke-direct {v6, p0, p1, p2}, Lcom/shabakaty/downloader/bt5;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ek5;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Lcom/shabakaty/downloader/mi6;->h()V

    .line 14
    new-instance v7, Lcom/shabakaty/downloader/sd6;

    .line 15
    invoke-direct {v7, v5, v6, v0}, Lcom/shabakaty/downloader/sd6;-><init>(Lcom/shabakaty/downloader/de6;Ljava/util/concurrent/Callable;Z)V

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v6, v5, Lcom/shabakaty/downloader/de6;->c:Lcom/shabakaty/downloader/xd6;

    if-ne v0, v6, :cond_0

    .line 17
    invoke-virtual {v7}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v5, v7}, Lcom/shabakaty/downloader/de6;->u(Lcom/shabakaty/downloader/sd6;)V

    .line 19
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v5, "Log and bundle returned null. appId"

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 23
    invoke-virtual {v0, v5, v6}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_1
    iget-object v5, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 24
    invoke-virtual {v5}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/mn0;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 26
    iget-object v7, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 27
    invoke-virtual {v7}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v7

    .line 28
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v8, "Log and bundle processed. event, size, time_ms"

    .line 29
    iget-object v9, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 30
    invoke-virtual {v9}, Lcom/shabakaty/downloader/uw6;->N()Lcom/shabakaty/downloader/e66;

    move-result-object v9

    iget-object v10, p1, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    array-length v10, v0

    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    div-long/2addr v5, v3

    sub-long/2addr v5, v1

    .line 32
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 33
    invoke-virtual {v7, v8, v9, v10, v1}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 34
    invoke-virtual {v1}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 35
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 36
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 37
    invoke-virtual {v2}, Lcom/shabakaty/downloader/uw6;->N()Lcom/shabakaty/downloader/e66;

    move-result-object v2

    iget-object p1, p1, Lcom/shabakaty/downloader/ek5;->r:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to log and bundle. appId, event, error"

    .line 38
    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final K1(Ljava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/ma7;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/shabakaty/downloader/ma7;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qy6;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p4}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    .line 2
    iget-object v2, p4, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v0, "null reference"

    .line 3
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v6

    new-instance v7, Lcom/shabakaty/downloader/hf6;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/hf6;-><init>(Lcom/shabakaty/downloader/di6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/de6;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 7
    :try_start_0
    check-cast p1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/uy6;

    if-nez p3, :cond_1

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/f;->U(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/qy6;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/qy6;-><init>(Lcom/shabakaty/downloader/uy6;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    iget-object p2, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 12
    invoke-virtual {p2}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 13
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 14
    iget-object p3, p4, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Failed to query user properties. appId"

    .line 15
    invoke-virtual {p2, p4, p3, p1}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final L(Lcom/shabakaty/downloader/ma7;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    new-instance v0, Lcom/shabakaty/downloader/og6;

    const/4 v1, 0x3

    .line 2
    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/og6;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ma7;I)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final L1(Lcom/shabakaty/downloader/ma7;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/di6;->g2(Ljava/lang/String;Z)V

    new-instance v0, Lcom/shabakaty/downloader/og6;

    .line 3
    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/og6;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ma7;I)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final O1(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    new-instance v0, Lcom/shabakaty/downloader/so5;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qy6;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/di6;->g2(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v7, Lcom/shabakaty/downloader/hf6;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/hf6;-><init>(Lcom/shabakaty/downloader/di6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/de6;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 4
    :try_start_0
    check-cast p2, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/uy6;

    if-nez p4, :cond_1

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/f;->U(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/qy6;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/qy6;-><init>(Lcom/shabakaty/downloader/uy6;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_1
    iget-object p3, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 9
    invoke-virtual {p3}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p3

    .line 10
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Failed to get user properties as. appId"

    .line 12
    invoke-virtual {p3, p4, p1, p2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final R0(Lcom/shabakaty/downloader/ma7;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->M:Ljava/lang/String;

    const-string v1, "null reference"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/og6;

    const/4 v1, 0x2

    .line 5
    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/og6;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ma7;I)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/de6;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/og6;->run()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/de6;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b0(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ma7;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ma7;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ve5;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    .line 2
    iget-object v2, p3, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string p3, "null reference"

    .line 3
    invoke-static {v2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object p3, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 5
    invoke-virtual {p3}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p3

    new-instance v6, Lcom/shabakaty/downloader/hf6;

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/hf6;-><init>(Lcom/shabakaty/downloader/di6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p3, v6}, Lcom/shabakaty/downloader/de6;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 7
    :try_start_0
    check-cast p1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 8
    invoke-virtual {p2}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 9
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string p3, "Failed to get conditional user properties"

    .line 10
    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c1(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/shabakaty/downloader/zh6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/zh6;-><init>(Lcom/shabakaty/downloader/di6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v7}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d0(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    new-instance v0, Lcom/shabakaty/downloader/so5;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g2(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lcom/shabakaty/downloader/di6;->b:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    iget-object v2, p0, Lcom/shabakaty/downloader/di6;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 6
    invoke-static {p2, v2}, Lcom/shabakaty/downloader/hv4;->a(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 7
    iget-object p2, p2, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 9
    invoke-static {p2}, Lcom/shabakaty/downloader/xq1;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/xq1;

    move-result-object p2

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/shabakaty/downloader/xq1;->b(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 11
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/di6;->b:Ljava/lang/Boolean;

    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/di6;->b:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_3
    iget-object p2, p0, Lcom/shabakaty/downloader/di6;->c:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 13
    iget-object p2, p2, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 16
    sget-boolean v3, Lcom/shabakaty/downloader/uq1;->a:Z

    .line 17
    invoke-static {p2, v2, p1}, Lcom/shabakaty/downloader/hv4;->b(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 18
    iput-object p1, p0, Lcom/shabakaty/downloader/di6;->c:Ljava/lang/String;

    :cond_4
    iget-object p2, p0, Lcom/shabakaty/downloader/di6;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "Unknown calling package name \'%s\'."

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    throw p2

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 28
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string p2, "Measurement Service called without app package"

    .line 30
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/SecurityException;

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h2(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i0(Landroid/os/Bundle;Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v0, "null reference"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/so5;

    .line 5
    invoke-direct {v0, p0, p2, p1}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/di6;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i2(Lcom/shabakaty/downloader/ma7;)V
    .locals 3

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/di6;->g2(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    iget-object v2, p1, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/ma7;->L:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/f;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ve5;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/di6;->g2(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v7, Lcom/shabakaty/downloader/hf6;

    const/4 v6, 0x3

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/hf6;-><init>(Lcom/shabakaty/downloader/di6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/de6;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 4
    :try_start_0
    check-cast p1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 6
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string p3, "Failed to get conditional user properties as"

    .line 7
    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final z(Lcom/shabakaty/downloader/ma7;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    new-instance v0, Lcom/shabakaty/downloader/og6;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/og6;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ma7;I)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    return-void
.end method
