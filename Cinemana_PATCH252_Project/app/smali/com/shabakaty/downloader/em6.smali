.class public final Lcom/shabakaty/downloader/em6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/shabakaty/downloader/fv5;Lcom/shabakaty/downloader/ek5;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/em6;->r:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/em6;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/em6;->u:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/em6;->t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/shabakaty/downloader/fv5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/em6;->r:I

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/em6;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/em6;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/em6;->u:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gw6;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/em6;->r:I

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/em6;->t:Ljava/lang/String;

    const-string p1, "_err"

    iput-object p1, p0, Lcom/shabakaty/downloader/em6;->u:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/em6;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vn6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/em6;->r:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/em6;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/em6;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/em6;->u:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zs6;Lcom/shabakaty/downloader/ek5;Ljava/lang/String;Lcom/shabakaty/downloader/fv5;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/em6;->r:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/em6;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/em6;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/em6;->u:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/shabakaty/downloader/em6;->r:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/gw6;

    iget-object v0, v0, Lcom/shabakaty/downloader/gw6;->r:Lcom/shabakaty/downloader/uw6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->R()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/em6;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/shabakaty/downloader/em6;->u:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/shabakaty/downloader/em6;->s:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/gw6;

    iget-object v0, v0, Lcom/shabakaty/downloader/gw6;->r:Lcom/shabakaty/downloader/uw6;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v5, "auto"

    .line 5
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/f;->s0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/shabakaty/downloader/ek5;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/gw6;

    iget-object v1, v1, Lcom/shabakaty/downloader/gw6;->r:Lcom/shabakaty/downloader/uw6;

    const-string v2, "null reference"

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/em6;->t:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/uw6;->g(Lcom/shabakaty/downloader/ek5;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/zs6;

    .line 9
    iget-object v2, v2, Lcom/shabakaty/downloader/zs6;->d:Lcom/shabakaty/downloader/o46;

    if-nez v2, :cond_0

    .line 10
    check-cast v1, Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 12
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    .line 13
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    goto :goto_0

    .line 14
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/em6;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ek5;

    iget-object v3, p0, Lcom/shabakaty/downloader/em6;->t:Ljava/lang/String;

    .line 15
    invoke-interface {v2, v1, v3}, Lcom/shabakaty/downloader/o46;->I0(Lcom/shabakaty/downloader/ek5;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zs6;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zs6;->s()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 18
    :try_start_2
    iget-object v2, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/zs6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 20
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "Failed to send event to the service to bundle"

    .line 21
    invoke-virtual {v2, v3, v1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 22
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/em6;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/fv5;

    .line 23
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/f;->E(Lcom/shabakaty/downloader/fv5;[B)V

    return-void

    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/zs6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/em6;->u:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/fv5;

    .line 25
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/f;->E(Lcom/shabakaty/downloader/fv5;[B)V

    .line 26
    throw v1

    .line 27
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/downloader/em6;->s:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/fv5;

    iget-object v3, p0, Lcom/shabakaty/downloader/em6;->u:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/ek5;

    iget-object v4, p0, Lcom/shabakaty/downloader/em6;->t:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 30
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka6;->f()V

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 31
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    .line 32
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v6, Lcom/shabakaty/downloader/qq1;->b:Lcom/shabakaty/downloader/qq1;

    .line 34
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 35
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    const v7, 0xbdfcb8

    .line 36
    invoke-virtual {v6, v5, v7}, Lcom/shabakaty/downloader/qq1;->c(Landroid/content/Context;I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 37
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 39
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v4, "Not bundling data. Service unavailable or out of date"

    .line 40
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    new-array v1, v1, [B

    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/f;->E(Lcom/shabakaty/downloader/fv5;[B)V

    goto :goto_2

    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/em6;

    .line 43
    invoke-direct {v1, v0, v3, v4, v2}, Lcom/shabakaty/downloader/em6;-><init>(Lcom/shabakaty/downloader/zs6;Lcom/shabakaty/downloader/ek5;Ljava/lang/String;Lcom/shabakaty/downloader/fv5;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs6;->t(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    .line 44
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/downloader/em6;->s:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lcom/shabakaty/downloader/em6;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/em6;->u:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 47
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka6;->f()V

    .line 48
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs6;->q(Z)Lcom/shabakaty/downloader/ma7;

    move-result-object v7

    new-instance v1, Lcom/shabakaty/downloader/zr6;

    move-object v2, v1

    move-object v3, v0

    .line 49
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/zr6;-><init>(Lcom/shabakaty/downloader/zs6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ma7;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs6;->t(Ljava/lang/Runnable;)V

    return-void

    .line 50
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/em6;->v:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/downloader/em6;->s:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lcom/shabakaty/downloader/fv5;

    iget-object v4, p0, Lcom/shabakaty/downloader/em6;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/em6;->u:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 53
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka6;->f()V

    .line 54
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs6;->q(Z)Lcom/shabakaty/downloader/ma7;

    move-result-object v6

    new-instance v1, Lcom/shabakaty/downloader/zr6;

    move-object v2, v1

    move-object v3, v0

    .line 55
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/zr6;-><init>(Lcom/shabakaty/downloader/zs6;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ma7;Lcom/shabakaty/downloader/fv5;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs6;->t(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
