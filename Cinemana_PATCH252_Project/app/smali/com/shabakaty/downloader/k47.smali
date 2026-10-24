.class public final Lcom/shabakaty/downloader/k47;
.super Lcom/shabakaty/downloader/oz5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/p47;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScanner"

    const/4 v1, 0x4

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/shabakaty/downloader/oz5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final y1(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/z57;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gx1;",
            "Lcom/shabakaty/downloader/z57;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/k37;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/jt5;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, v0, p1}, Lcom/shabakaty/downloader/z57;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 p1, 0x3

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->i2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/k37;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
