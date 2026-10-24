.class public final Lcom/shabakaty/downloader/n57;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/po6;


# instance fields
.field public a:Z

.field public final b:Landroid/content/Context;

.field public final c:Lcom/shabakaty/downloader/lf5;

.field public d:Lcom/shabakaty/downloader/fg5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/ti;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lf5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lf5;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/n57;->c:Lcom/shabakaty/downloader/lf5;

    iput-object p1, p0, Lcom/shabakaty/downloader/n57;->b:Landroid/content/Context;

    .line 2
    iget p1, p2, Lcom/shabakaty/downloader/ti;->a:I

    .line 3
    iput p1, v0, Lcom/shabakaty/downloader/lf5;->r:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Lcom/shabakaty/downloader/n57;->d:Lcom/shabakaty/downloader/fg5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xd

    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/n57;->b:Landroid/content/Context;

    .line 1
    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->i:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v4, "com.google.android.gms.vision.dynamite"

    .line 2
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v2

    const-string v3, "com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator"

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 4
    sget v3, Lcom/shabakaty/downloader/vg5;->a:I

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    .line 5
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 6
    instance-of v4, v3, Lcom/shabakaty/downloader/dh5;

    if-eqz v4, :cond_2

    .line 7
    move-object v2, v3

    check-cast v2, Lcom/shabakaty/downloader/dh5;

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/shabakaty/downloader/pg5;

    .line 8
    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/pg5;-><init>(Landroid/os/IBinder;)V

    move-object v2, v3

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/n57;->b:Landroid/content/Context;

    .line 10
    new-instance v4, Lcom/shabakaty/downloader/p43;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 11
    iget-object v3, p0, Lcom/shabakaty/downloader/n57;->c:Lcom/shabakaty/downloader/lf5;

    .line 12
    invoke-interface {v2, v4, v3}, Lcom/shabakaty/downloader/dh5;->w1(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/lf5;)Lcom/shabakaty/downloader/fg5;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/n57;->d:Lcom/shabakaty/downloader/fg5;

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/shabakaty/downloader/n57;->a:Z

    if-nez v2, :cond_3

    const-string v2, "LegacyBarcodeScanner"

    const-string v3, "Request optional module download."

    .line 13
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/shabakaty/downloader/n57;->b:Landroid/content/Context;

    const-string v3, "barcode"

    .line 14
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/f83;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/shabakaty/downloader/n57;->a:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v1

    :catch_0
    move-exception v1

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/au2;

    const-string v3, "Failed to load deprecated vision dynamite module."

    invoke-direct {v2, v3, v0, v1}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 16
    new-instance v2, Lcom/shabakaty/downloader/au2;

    const-string v3, "Failed to create legacy barcode detector."

    invoke-direct {v2, v3, v0, v1}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method

.method public final b(Lcom/shabakaty/downloader/k12;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/k12;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/n57;->d:Lcom/shabakaty/downloader/fg5;

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/n57;->a()Z

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/n57;->d:Lcom/shabakaty/downloader/fg5;

    if-eqz v0, :cond_6

    .line 2
    new-instance v8, Lcom/shabakaty/downloader/kh5;

    .line 3
    iget v2, p1, Lcom/shabakaty/downloader/k12;->c:I

    .line 4
    iget v3, p1, Lcom/shabakaty/downloader/k12;->d:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    .line 5
    iget v1, p1, Lcom/shabakaty/downloader/k12;->e:I

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/h70;->a(I)I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/kh5;-><init>(IIIJI)V

    .line 7
    :try_start_0
    iget v1, p1, Lcom/shabakaty/downloader/k12;->f:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    const/16 v2, 0x23

    if-eq v1, v2, :cond_2

    const v2, 0x32315659

    if-ne v1, v2, :cond_1

    .line 8
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/uy1;->a(Lcom/shabakaty/downloader/k12;Z)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/p43;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0, v1, v8}, Lcom/shabakaty/downloader/fg5;->l2(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/kh5;)[Lcom/shabakaty/downloader/fc7;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/au2;

    .line 12
    iget p1, p1, Lcom/shabakaty/downloader/k12;->f:I

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported image format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k12;->a()[Landroid/media/Image$Plane;

    move-result-object p1

    const-string v1, "null reference"

    .line 15
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    aget-object v1, p1, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    iput v1, v8, Lcom/shabakaty/downloader/kh5;->r:I

    .line 17
    aget-object p1, p1, v3

    .line 18
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 19
    new-instance v1, Lcom/shabakaty/downloader/p43;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0, v1, v8}, Lcom/shabakaty/downloader/fg5;->l2(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/kh5;)[Lcom/shabakaty/downloader/fc7;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 21
    new-instance v1, Lcom/shabakaty/downloader/p43;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v0, v1, v8}, Lcom/shabakaty/downloader/fg5;->l2(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/kh5;)[Lcom/shabakaty/downloader/fc7;

    move-result-object p1

    goto :goto_0

    .line 23
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/downloader/k12;->a:Landroid/graphics/Bitmap;

    .line 24
    new-instance v1, Lcom/shabakaty/downloader/p43;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object p1

    .line 26
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/jt5;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v1, 0x1

    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v8, p1, v3}, Lcom/shabakaty/downloader/kh5;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v1, 0x2

    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/oz5;->i2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 30
    sget-object v0, Lcom/shabakaty/downloader/fc7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/fc7;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    move-object p1, v0

    .line 32
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    array-length v1, p1

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v2, p1, v3

    new-instance v4, Lcom/shabakaty/downloader/ri;

    new-instance v5, Lcom/shabakaty/downloader/bv6;

    .line 35
    invoke-direct {v5, v2}, Lcom/shabakaty/downloader/bv6;-><init>(Lcom/shabakaty/downloader/fc7;)V

    invoke-direct {v4, v5}, Lcom/shabakaty/downloader/ri;-><init>(Lcom/shabakaty/downloader/nr6;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v0

    :catch_0
    move-exception p1

    .line 36
    new-instance v0, Lcom/shabakaty/downloader/au2;

    const/16 v1, 0xd

    const-string v2, "Failed to detect with legacy barcode detector"

    invoke-direct {v0, v2, v1, p1}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 37
    :cond_6
    new-instance p1, Lcom/shabakaty/downloader/au2;

    const/16 v0, 0xe

    const-string v1, "Waiting for the barcode module to be downloaded. Please wait."

    invoke-direct {p1, v1, v0}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/n57;->d:Lcom/shabakaty/downloader/fg5;

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LegacyBarcodeScanner"

    const-string v2, "Failed to release legacy barcode detector."

    .line 3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/n57;->d:Lcom/shabakaty/downloader/fg5;

    :cond_0
    return-void
.end method
