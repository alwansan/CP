.class public abstract Lcom/shabakaty/downloader/n47;
.super Lcom/shabakaty/downloader/gm5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/p47;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScanner"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/gm5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 p4, 0x1

    if-eq p1, p4, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/z57;->CREATOR:Landroid/os/Parcelable$Creator;

    sget v2, Lcom/shabakaty/downloader/jt5;->a:I

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Parcelable;

    .line 5
    :goto_0
    check-cast v1, Lcom/shabakaty/downloader/z57;

    .line 6
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/i87;

    invoke-virtual {p2, p1, v1}, Lcom/shabakaty/downloader/i87;->y1(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/z57;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_1

    .line 9
    :cond_2
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/i87;

    .line 10
    iget-object p2, p1, Lcom/shabakaty/downloader/i87;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/google/android/libraries/barhopper/BarhopperV2;->close()V

    iput-object v1, p1, Lcom/shabakaty/downloader/i87;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    .line 12
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 13
    :cond_4
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/i87;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/i87;->d()V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return p4
.end method
