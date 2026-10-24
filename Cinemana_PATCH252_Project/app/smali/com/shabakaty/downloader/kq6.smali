.class public final Lcom/shabakaty/downloader/kq6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/ma7;

.field public final synthetic t:Lcom/shabakaty/downloader/zs6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zs6;Lcom/shabakaty/downloader/ma7;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/kq6;->r:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    iput-object p2, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    iput-object p2, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    iput-object p2, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    iput-object p2, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/kq6;->r:I

    const-string v1, "null reference"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/zs6;->d:Lcom/shabakaty/downloader/o46;

    if-nez v2, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v1, "Failed to send measurementEnabled to service"

    .line 6
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    .line 9
    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/o46;->z(Lcom/shabakaty/downloader/ma7;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zs6;->s()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Failed to send measurementEnabled to the service"

    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 15
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    .line 16
    iget-object v2, v0, Lcom/shabakaty/downloader/zs6;->d:Lcom/shabakaty/downloader/o46;

    if-nez v2, :cond_1

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v1, "Discarding data. Failed to send app launch"

    .line 20
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    .line 21
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    .line 23
    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/o46;->L(Lcom/shabakaty/downloader/ma7;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/shabakaty/downloader/z56;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/shabakaty/downloader/z56;->n()Z

    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    .line 26
    invoke-virtual {v0, v2, v1, v3}, Lcom/shabakaty/downloader/zs6;->i(Lcom/shabakaty/downloader/o46;Lcom/shabakaty/downloader/x0;Lcom/shabakaty/downloader/ma7;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    .line 27
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zs6;->s()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 28
    iget-object v1, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Failed to send app launch to the service"

    .line 31
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 32
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    .line 33
    iget-object v2, v0, Lcom/shabakaty/downloader/zs6;->d:Lcom/shabakaty/downloader/o46;

    if-nez v2, :cond_2

    .line 34
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 36
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v1, "Failed to reset data on the service: not connected to service"

    .line 37
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    .line 38
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    .line 40
    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/o46;->L1(Lcom/shabakaty/downloader/ma7;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 41
    iget-object v1, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 43
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Failed to reset data on the service: remote exception"

    .line 44
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    .line 46
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zs6;->s()V

    :goto_3
    return-void

    .line 47
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    .line 48
    iget-object v2, v0, Lcom/shabakaty/downloader/zs6;->d:Lcom/shabakaty/downloader/o46;

    if-nez v2, :cond_3

    .line 49
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 51
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v1, "Failed to send consent settings to service"

    .line 52
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    .line 53
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->s:Lcom/shabakaty/downloader/ma7;

    .line 55
    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/o46;->R0(Lcom/shabakaty/downloader/ma7;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    .line 56
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zs6;->s()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 57
    iget-object v1, p0, Lcom/shabakaty/downloader/kq6;->t:Lcom/shabakaty/downloader/zs6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 59
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v2, "Failed to send consent settings to the service"

    .line 60
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
