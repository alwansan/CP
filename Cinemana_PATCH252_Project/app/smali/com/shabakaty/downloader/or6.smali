.class public final Lcom/shabakaty/downloader/or6;
.super Lcom/shabakaty/downloader/dg7;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/dg7;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic m(Lcom/google/android/gms/common/api/a$b;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/s57;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/or6;->q(Lcom/shabakaty/downloader/s57;)V

    return-void
.end method

.method public final q(Lcom/shabakaty/downloader/s57;)V
    .locals 1

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/s57;->P(Ljava/lang/String;Lcom/shabakaty/downloader/lj;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/um5;->p()V

    return-void
.end method
