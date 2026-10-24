.class public final Lcom/shabakaty/downloader/vz6;
.super Lcom/shabakaty/downloader/x57;
.source "com.google.android.gms:play-services-auth@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/x57<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/x57;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic e(Lcom/google/android/gms/common/api/Status;)Lcom/shabakaty/downloader/ft3;
    .locals 0

    return-object p1
.end method

.method public final m(Lcom/google/android/gms/common/api/a$b;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xa6;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/re7;

    new-instance v1, Lcom/shabakaty/downloader/m27;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/m27;-><init>(Lcom/shabakaty/downloader/vz6;)V

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/xa6;->X:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/re7;->W(Lcom/shabakaty/downloader/ud7;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
