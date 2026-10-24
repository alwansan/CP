.class public final Lcom/shabakaty/downloader/h46;
.super Lcom/shabakaty/downloader/oz5;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/o46;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/shabakaty/downloader/oz5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final B(Lcom/shabakaty/downloader/ve5;Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xc

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final E1(Lcom/shabakaty/downloader/ma7;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xb

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->i2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final I0(Lcom/shabakaty/downloader/ek5;Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->i2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final K1(Ljava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/ma7;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/shabakaty/downloader/ma7;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qy6;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/gq5;->a:Ljava/lang/ClassLoader;

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-static {v0, p4}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xe

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->i2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 8
    sget-object p2, Lcom/shabakaty/downloader/qy6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final L(Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final L1(Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x12

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final O1(Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qy6;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/gq5;->a:Ljava/lang/ClassLoader;

    .line 6
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xf

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/oz5;->i2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 8
    sget-object p2, Lcom/shabakaty/downloader/qy6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final R0(Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x14

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b0(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ma7;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ma7;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ve5;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p3}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x10

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->i2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/ve5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final c1(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final d0(Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final i0(Landroid/os/Bundle;Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x13

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ve5;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p2, 0x11

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/oz5;->i2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/ve5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final z(Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/gq5;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->k2(ILandroid/os/Parcel;)V

    return-void
.end method
