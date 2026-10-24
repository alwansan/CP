.class public final Lcom/google/android/gms/analytics/AnalyticsJobService;
.super Landroid/app/job/JobService;

# interfaces
.implements Lcom/shabakaty/downloader/gy5;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field public r:Lcom/shabakaty/downloader/ox5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ox5<",
            "Lcom/google/android/gms/analytics/AnalyticsJobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/job/JobService;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/app/job/JobParameters;Z)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final c()Lcom/shabakaty/downloader/ox5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/ox5<",
            "Lcom/google/android/gms/analytics/AnalyticsJobService;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsJobService;->r:Lcom/shabakaty/downloader/ox5;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ox5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ox5;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsJobService;->r:Lcom/shabakaty/downloader/ox5;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsJobService;->r:Lcom/shabakaty/downloader/ox5;

    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->c()Lcom/shabakaty/downloader/ox5;

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
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->c()Lcom/shabakaty/downloader/ox5;

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
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->c()Lcom/shabakaty/downloader/ox5;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/shabakaty/downloader/ox5;->a(Landroid/content/Intent;I)I

    const/4 p1, 0x2

    return p1
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->c()Lcom/shabakaty/downloader/ox5;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/shabakaty/downloader/fj5;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/fj5;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Local AnalyticsJobService called. action"

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/so5;

    invoke-direct {v2, v0, v1, p1}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/ox5;Lcom/shabakaty/downloader/wv5;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ox5;->g(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
