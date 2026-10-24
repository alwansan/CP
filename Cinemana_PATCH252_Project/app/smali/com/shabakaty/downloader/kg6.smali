.class public final Lcom/shabakaty/downloader/kg6;
.super Lcom/shabakaty/downloader/dg7;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# instance fields
.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/kg6;->q:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/kg6;->r:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/dg7;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic m(Lcom/google/android/gms/common/api/a$b;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/s57;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/kg6;->q(Lcom/shabakaty/downloader/s57;)V

    return-void
.end method

.method public final q(Lcom/shabakaty/downloader/s57;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kg6;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/kg6;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/shabakaty/downloader/s57;->Q(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/lj;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/um5;->p()V

    return-void
.end method
