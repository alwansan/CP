.class public final Lcom/shabakaty/downloader/vb5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/qb5;
.implements Landroid/os/IInterface;


# instance fields
.field public final a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vb5;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final I1(Lcom/shabakaty/downloader/uw1;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vb5;->r()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    sget v1, Lcom/shabakaty/downloader/lb5;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x9

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/vb5;->g2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vb5;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final d2(Lcom/shabakaty/downloader/cc5;Lcom/shabakaty/downloader/db5;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vb5;->r()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    sget v1, Lcom/shabakaty/downloader/lb5;->a:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/cc5;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5
    check-cast p2, Lcom/shabakaty/downloader/u95;

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p1, 0xc

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/vb5;->g2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final g2(ILandroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/vb5;->a:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8
    throw p1
.end method

.method public final r()Landroid/os/Parcel;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "com.google.android.gms.signin.internal.ISignInService"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public final u(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vb5;->r()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x7

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/vb5;->g2(ILandroid/os/Parcel;)V

    return-void
.end method
