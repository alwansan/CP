.class public final Lcom/shabakaty/downloader/cv6;
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

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/cv6;->q(Lcom/shabakaty/downloader/s57;)V

    return-void
.end method

.method public final q(Lcom/shabakaty/downloader/s57;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/s57;->S(Lcom/shabakaty/downloader/lj;)V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gf5;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/s57;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/gf5;->q0()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e0

    .line 5
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/s57;->T(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/um5;->p()V

    return-void
.end method
