.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Lcom/shabakaty/downloader/j55;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/eb6;


# instance fields
.field public t:Lcom/shabakaty/downloader/ib6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/j55;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->t:Lcom/shabakaty/downloader/ib6;

    if-nez v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/ib6;

    .line 1
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ib6;-><init>(Lcom/shabakaty/downloader/eb6;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->t:Lcom/shabakaty/downloader/ib6;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->t:Lcom/shabakaty/downloader/ib6;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v1}, Lcom/google/android/gms/measurement/internal/d;->v(Landroid/content/Context;Lcom/shabakaty/downloader/ow5;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/d;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    if-nez p2, :cond_1

    .line 5
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string p2, "Receiver called with null intent"

    .line 6
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v3, "Local receiver got"

    .line 9
    invoke-virtual {v2, v3, p2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    .line 10
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p2, Landroid/content/Intent;

    .line 11
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 12
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 13
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "Starting wakeful intent."

    .line 15
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/shabakaty/downloader/ib6;->a:Lcom/shabakaty/downloader/eb6;

    .line 16
    check-cast v0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j55;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    const-string p1, "com.android.vending.INSTALL_REFERRER"

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string p2, "Install Referrer Broadcasts are deprecated"

    .line 20
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
