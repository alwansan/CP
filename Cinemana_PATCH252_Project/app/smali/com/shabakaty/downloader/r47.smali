.class public final Lcom/shabakaty/downloader/r47;
.super Lcom/shabakaty/downloader/oz5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/v47;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator"

    const/4 v1, 0x4

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/shabakaty/downloader/oz5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final newBarcodeScanner(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/p37;)Lcom/shabakaty/downloader/p47;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/jt5;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Lcom/shabakaty/downloader/p37;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->i2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScanner"

    .line 7
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/shabakaty/downloader/p47;

    if-eqz v1, :cond_1

    .line 9
    move-object p2, v0

    check-cast p2, Lcom/shabakaty/downloader/p47;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/k47;

    .line 10
    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/k47;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
