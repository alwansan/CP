.class public final Lcom/shabakaty/downloader/el6;
.super Lcom/shabakaty/downloader/nw$f;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# instance fields
.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/el6;->q:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/el6;->r:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/nw$f;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic m(Lcom/google/android/gms/common/api/a$b;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/s57;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/el6;->q(Lcom/shabakaty/downloader/s57;)V

    return-void
.end method

.method public final q(Lcom/shabakaty/downloader/s57;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/el6;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/el6;->r:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/s57;->O(Lcom/shabakaty/downloader/lj;)V

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/mo5;

    invoke-direct {v2}, Lcom/shabakaty/downloader/mo5;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/gf5;

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/s57;->V()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v3, v0, v1, v2}, Lcom/shabakaty/downloader/gf5;->h0(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/mo5;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e0

    .line 7
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/s57;->R(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 8
    :catch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/um5;->p()V

    return-void
.end method
