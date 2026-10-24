.class public final Lcom/shabakaty/downloader/ku6;
.super Lcom/shabakaty/downloader/li5;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nu6;Lcom/shabakaty/downloader/pi6;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/ku6;->e:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ku6;->f:Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/li5;-><init>(Lcom/shabakaty/downloader/pi6;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ov6;Lcom/shabakaty/downloader/pi6;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/ku6;->e:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ku6;->f:Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/li5;-><init>(Lcom/shabakaty/downloader/pi6;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/ku6;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ku6;->f:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/nu6;

    iget-object v1, v0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    .line 2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/d56;->e()V

    iget-object v1, v0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/shabakaty/downloader/nu6;->a(ZZJ)Z

    iget-object v1, v0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->o()Lcom/shabakaty/downloader/vz5;

    move-result-object v1

    iget-object v0, v0, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 9
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/vz5;->h(J)V

    return-void

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ku6;->f:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ov6;

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ov6;->i()V

    iget-object v0, p0, Lcom/shabakaty/downloader/ku6;->f:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ov6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v1, "Starting upload from DelayedRunnable"

    .line 16
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/ku6;->f:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ov6;

    iget-object v0, v0, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->t()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
