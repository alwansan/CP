.class public final Lcom/shabakaty/downloader/zr6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/lang/Object;

.field public final t:Ljava/lang/Object;

.field public final u:Ljava/lang/Object;

.field public final v:Ljava/lang/Object;

.field public final w:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tl2;Lcom/shabakaty/downloader/rd5;Lcom/shabakaty/downloader/rd5;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/zk4;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/zr6;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/zr6;->t:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/zr6;->u:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/zr6;->v:Ljava/lang/Object;

    iput-object p5, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zs6;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ma7;Lcom/shabakaty/downloader/fv5;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/zr6;->r:I

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/zr6;->t:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/zr6;->u:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/zr6;->v:Ljava/lang/Object;

    iput-object p5, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zs6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/zr6;->r:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/zr6;->t:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/zr6;->u:Ljava/lang/Object;

    iput-object p5, p0, Lcom/shabakaty/downloader/zr6;->v:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/zr6;->r:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 1
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/zs6;

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/zs6;->d:Lcom/shabakaty/downloader/o46;

    if-nez v2, :cond_0

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Failed to get conditional properties; not connected to service"

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/zr6;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/zr6;->u:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    goto :goto_0

    .line 9
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ma7;

    const-string v3, "null reference"

    .line 10
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/downloader/zr6;->u:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/zr6;->v:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/ma7;

    .line 12
    invoke-interface {v2, v1, v3, v4}, Lcom/shabakaty/downloader/o46;->b0(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ma7;)Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/f;->t(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zs6;

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zs6;->s()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 16
    :try_start_2
    iget-object v2, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/zs6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 18
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "Failed to get conditional properties; remote exception"

    .line 19
    iget-object v4, p0, Lcom/shabakaty/downloader/zr6;->t:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/shabakaty/downloader/zr6;->u:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 21
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/fv5;

    .line 22
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/f;->C(Lcom/shabakaty/downloader/fv5;Ljava/util/ArrayList;)V

    return-void

    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/zs6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/fv5;

    .line 24
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/f;->C(Lcom/shabakaty/downloader/fv5;Ljava/util/ArrayList;)V

    .line 25
    throw v1

    .line 26
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/zs6;

    .line 27
    iget-object v3, v3, Lcom/shabakaty/downloader/zs6;->d:Lcom/shabakaty/downloader/o46;

    if-nez v3, :cond_1

    .line 28
    check-cast v2, Lcom/shabakaty/downloader/zs6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 30
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "(legacy) Failed to get conditional properties; not connected to service"

    .line 31
    iget-object v4, p0, Lcom/shabakaty/downloader/zr6;->t:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/shabakaty/downloader/zr6;->u:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 32
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 35
    :cond_1
    :try_start_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/zr6;->v:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ma7;

    const-string v4, "null reference"

    .line 36
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iget-object v2, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/shabakaty/downloader/zr6;->t:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/shabakaty/downloader/zr6;->u:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/shabakaty/downloader/zr6;->v:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/ma7;

    .line 38
    invoke-interface {v3, v4, v5, v6}, Lcom/shabakaty/downloader/o46;->b0(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ma7;)Ljava/util/List;

    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_2

    .line 40
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/shabakaty/downloader/zr6;->t:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/shabakaty/downloader/zr6;->u:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 41
    invoke-interface {v3, v1, v4, v5}, Lcom/shabakaty/downloader/o46;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 43
    :goto_2
    iget-object v2, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/zs6;

    .line 44
    invoke-virtual {v2}, Lcom/shabakaty/downloader/zs6;->s()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 45
    :try_start_6
    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v2

    .line 46
    :try_start_7
    iget-object v3, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/zs6;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 48
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v4, "(legacy) Failed to get conditional properties; remote exception"

    .line 49
    iget-object v5, p0, Lcom/shabakaty/downloader/zr6;->t:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 50
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 53
    monitor-exit v0

    :goto_4
    return-void

    .line 54
    :goto_5
    iget-object v2, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 55
    throw v1

    :catchall_2
    move-exception v1

    .line 56
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    .line 57
    :goto_6
    iget-object v0, p0, Lcom/shabakaty/downloader/zr6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tl2;

    iget-object v1, p0, Lcom/shabakaty/downloader/zr6;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/rd5;

    iget-object v2, p0, Lcom/shabakaty/downloader/zr6;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/rd5;

    iget-object v3, p0, Lcom/shabakaty/downloader/zr6;->v:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Callable;

    iget-object v4, p0, Lcom/shabakaty/downloader/zr6;->w:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/zk4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v1}, Lcom/shabakaty/downloader/rd5;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_9

    :cond_3
    :try_start_9
    iget-object v5, v0, Lcom/shabakaty/downloader/tl2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/uk6;

    .line 59
    monitor-enter v5
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    iget-object v6, v5, Lcom/shabakaty/downloader/uk6;->e:Lcom/shabakaty/downloader/po6;

    .line 60
    invoke-interface {v6}, Lcom/shabakaty/downloader/po6;->a()Z

    move-result v6

    iput-boolean v6, v5, Lcom/shabakaty/downloader/uk6;->h:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    monitor-exit v5

    .line 61
    iget-object v0, v0, Lcom/shabakaty/downloader/tl2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_7

    :catchall_3
    move-exception v0

    .line 62
    monitor-exit v5

    throw v0

    .line 63
    :cond_4
    :goto_7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/rd5;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/shabakaty/downloader/rd5;->a()V

    goto :goto_a

    :cond_5
    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    :try_start_c
    invoke-virtual {v1}, Lcom/shabakaty/downloader/rd5;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/shabakaty/downloader/rd5;->a()V

    goto :goto_a

    .line 64
    :cond_6
    iget-object v3, v4, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    .line 65
    new-instance v3, Lcom/shabakaty/downloader/au2;

    const-string v5, "Internal error has occurred when executing ML Kit tasks"

    const/16 v6, 0xd

    invoke-direct {v3, v5, v6, v0}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :goto_8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/rd5;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_9
    invoke-virtual {v2}, Lcom/shabakaty/downloader/rd5;->a()V

    goto :goto_a

    .line 66
    :cond_7
    iget-object v1, v4, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
