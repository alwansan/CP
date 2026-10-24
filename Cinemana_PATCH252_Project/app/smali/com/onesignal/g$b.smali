.class public Lcom/onesignal/g$b;
.super Ljava/lang/Object;
.source "GMSLocationController.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$b;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mo1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/onesignal/o;->d:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->s:Z

    .line 3
    sget-object v0, Lcom/onesignal/g;->j:Lcom/shabakaty/downloader/yo4;

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/yo4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMSLocationController GoogleApiClientListener onConnected lastLocation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onesignal/o;->h:Landroid/location/Location;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v2, v0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    sget-object v0, Lcom/onesignal/o;->h:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/onesignal/g;->j:Lcom/shabakaty/downloader/yo4;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/yo4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 10
    invoke-static {v0}, Lcom/onesignal/g$a;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/onesignal/o;->h:Landroid/location/Location;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMSLocationController GoogleApiClientListener lastLocation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onesignal/o;->h:Landroid/location/Location;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v2, v0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    sget-object v0, Lcom/onesignal/o;->h:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 14
    invoke-static {v0}, Lcom/onesignal/o;->b(Landroid/location/Location;)V

    .line 15
    :cond_1
    new-instance v0, Lcom/onesignal/g$c;

    .line 16
    sget-object v1, Lcom/onesignal/g;->j:Lcom/shabakaty/downloader/yo4;

    .line 17
    iget-object v1, v1, Lcom/shabakaty/downloader/yo4;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 18
    invoke-direct {v0, v1}, Lcom/onesignal/g$c;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v0, Lcom/onesignal/g;->k:Lcom/onesignal/g$c;

    .line 19
    monitor-exit p1

    return-void

    :cond_2
    :goto_0
    const-string v0, "GMSLocationController GoogleApiClientListener onConnected googleApiClient not available, returning"

    .line 20
    invoke-static {v2, v0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMSLocationController GoogleApiClientListener onConnectionSuspended connectionResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-static {}, Lcom/onesignal/g;->c()V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMSLocationController GoogleApiClientListener onConnectionSuspended i: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-static {}, Lcom/onesignal/g;->c()V

    return-void
.end method
