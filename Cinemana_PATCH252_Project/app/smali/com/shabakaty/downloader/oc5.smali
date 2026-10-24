.class public final Lcom/shabakaty/downloader/oc5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$b;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$c;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public c:Lcom/shabakaty/downloader/sc5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/oc5;->a:Lcom/google/android/gms/common/api/a;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/oc5;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/shabakaty/downloader/sc5;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oc5;->c:Lcom/shabakaty/downloader/sc5;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/oc5;->c:Lcom/shabakaty/downloader/sc5;

    return-object v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oc5;->a()Lcom/shabakaty/downloader/sc5;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/fb0;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oc5;->a()Lcom/shabakaty/downloader/sc5;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/oc5;->a:Lcom/google/android/gms/common/api/a;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/oc5;->b:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/shabakaty/downloader/sc5;->r(Lcom/shabakaty/downloader/gb0;Lcom/google/android/gms/common/api/a;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oc5;->a()Lcom/shabakaty/downloader/sc5;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/fb0;->onConnectionSuspended(I)V

    return-void
.end method
