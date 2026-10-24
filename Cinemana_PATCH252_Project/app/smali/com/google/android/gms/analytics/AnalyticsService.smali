.class public final Lcom/google/android/gms/analytics/AnalyticsService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/shabakaty/downloader/gy5;


# instance fields
.field public r:Lcom/shabakaty/downloader/ox5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ox5<",
            "Lcom/google/android/gms/analytics/AnalyticsService;",
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

.method public final b(Landroid/app/job/JobParameters;Z)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final c()Lcom/shabakaty/downloader/ox5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/ox5<",
            "Lcom/google/android/gms/analytics/AnalyticsService;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->r:Lcom/shabakaty/downloader/ox5;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ox5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ox5;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->r:Lcom/shabakaty/downloader/ox5;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->r:Lcom/shabakaty/downloader/ox5;

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->c()Lcom/shabakaty/downloader/ox5;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->c()Lcom/shabakaty/downloader/ox5;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/downloader/fj5;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/fj5;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v0

    const-string v1, "Local AnalyticsService is starting up"

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->c()Lcom/shabakaty/downloader/ox5;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/downloader/fj5;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/fj5;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v0

    const-string v1, "Local AnalyticsService is shutting down"

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 5
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->c()Lcom/shabakaty/downloader/ox5;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/shabakaty/downloader/ox5;->a(Landroid/content/Intent;I)I

    const/4 p1, 0x2

    return p1
.end method
