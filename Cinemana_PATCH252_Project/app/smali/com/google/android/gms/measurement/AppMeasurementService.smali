.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/qt6;


# instance fields
.field public r:Lcom/shabakaty/downloader/tt6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tt6<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j55;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public final c(Landroid/app/job/JobParameters;Z)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final d()Lcom/shabakaty/downloader/tt6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/tt6<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->r:Lcom/shabakaty/downloader/tt6;

    if-nez v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/tt6;

    .line 1
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/tt6;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->r:Lcom/shabakaty/downloader/tt6;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->r:Lcom/shabakaty/downloader/tt6;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lcom/shabakaty/downloader/tt6;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tt6;->c()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v0, "onBind called with null intent"

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.google.android.gms.measurement.START"

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/shabakaty/downloader/di6;

    iget-object p1, v0, Lcom/shabakaty/downloader/tt6;->a:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->P(Landroid/content/Context;)Lcom/shabakaty/downloader/uw6;

    move-result-object p1

    .line 8
    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/di6;-><init>(Lcom/shabakaty/downloader/uw6;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tt6;->c()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v2, "onBind received unknown action"

    .line 11
    invoke-virtual {v0, v2, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lcom/shabakaty/downloader/tt6;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/tt6;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/d;->v(Landroid/content/Context;Lcom/shabakaty/downloader/ow5;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v1, "Local AppMeasurementService is starting up"

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lcom/shabakaty/downloader/tt6;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/tt6;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/d;->v(Landroid/content/Context;Lcom/shabakaty/downloader/ow5;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v1, "Local AppMeasurementService is shutting down"

    .line 6
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 7
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lcom/shabakaty/downloader/tt6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/tt6;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lcom/shabakaty/downloader/tt6;

    move-result-object p2

    .line 2
    iget-object v0, p2, Lcom/shabakaty/downloader/tt6;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/d;->v(Landroid/content/Context;Lcom/shabakaty/downloader/ow5;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    if-nez p1, :cond_0

    .line 5
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string p2, "AppMeasurementService started with null intent"

    .line 6
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Local AppMeasurementService called. startId, action"

    invoke-virtual {v2, v4, v3, v1}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/shabakaty/downloader/ft6;

    .line 11
    invoke-direct {v1, p2, p3, v0, p1}, Lcom/shabakaty/downloader/ft6;-><init>(Lcom/shabakaty/downloader/tt6;ILcom/google/android/gms/measurement/internal/b;Landroid/content/Intent;)V

    .line 12
    iget-object p1, p2, Lcom/shabakaty/downloader/tt6;->a:Landroid/content/Context;

    .line 13
    invoke-static {p1}, Lcom/shabakaty/downloader/uw6;->P(Landroid/content/Context;)Lcom/shabakaty/downloader/uw6;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p2

    new-instance p3, Lcom/shabakaty/downloader/md7;

    invoke-direct {p3, p1, v1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/uw6;Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->d()Lcom/shabakaty/downloader/tt6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/tt6;->b(Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1
.end method
