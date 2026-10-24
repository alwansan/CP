.class public final Lcom/shabakaty/downloader/zd7;
.super Lcom/shabakaty/downloader/oz5;
.source "com.google.android.gms:play-services-basement@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/od7;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/shabakaty/downloader/oz5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final A1(Lcom/shabakaty/downloader/sr6;Lcom/shabakaty/downloader/gx1;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->r()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    sget v1, Lcom/shabakaty/downloader/qz5;->a:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/sr6;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/qz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->h2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
