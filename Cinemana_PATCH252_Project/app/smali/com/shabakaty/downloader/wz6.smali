.class public final Lcom/shabakaty/downloader/wz6;
.super Lcom/shabakaty/downloader/dg7;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# instance fields
.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/wz6;->q:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/dg7;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic m(Lcom/google/android/gms/common/api/a$b;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/s57;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wz6;->q(Lcom/shabakaty/downloader/s57;)V

    return-void
.end method

.method public final q(Lcom/shabakaty/downloader/s57;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wz6;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x7d1

    const/4 v1, 0x0

    const-string v2, "IllegalArgument: sessionId cannot be null or empty"

    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/shabakaty/downloader/ft3;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wz6;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/s57;->P(Ljava/lang/String;Lcom/shabakaty/downloader/lj;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/um5;->p()V

    return-void
.end method
