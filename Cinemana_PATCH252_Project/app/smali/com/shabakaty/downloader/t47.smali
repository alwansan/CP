.class public abstract Lcom/shabakaty/downloader/t47;
.super Lcom/shabakaty/downloader/gm5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/v47;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/gm5;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/shabakaty/downloader/v47;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/v47;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/v47;

    return-object v0

    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/r47;

    .line 4
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/r47;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/p37;->CREATOR:Landroid/os/Parcelable$Creator;

    sget v1, Lcom/shabakaty/downloader/jt5;->a:I

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    .line 5
    :goto_0
    check-cast p2, Lcom/shabakaty/downloader/p37;

    .line 6
    invoke-interface {p0, p1, p2}, Lcom/shabakaty/downloader/v47;->newBarcodeScanner(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/p37;)Lcom/shabakaty/downloader/p47;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-static {p3, p1}, Lcom/shabakaty/downloader/jt5;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
