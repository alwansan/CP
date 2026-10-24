.class public final Lcom/shabakaty/downloader/er5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/shabakaty/downloader/qp2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/uw3;->v(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v7, v1

    move-object v8, v7

    move-object v9, v8

    move-wide v10, v3

    const/4 v6, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_5

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 4
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/uw3;->u(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/uw3;->o(Landroid/os/Parcel;I)D

    move-result-wide v10

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Lcom/shabakaty/downloader/s55;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/uw3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0

    .line 8
    :cond_2
    sget-object v2, Lcom/shabakaty/downloader/ip2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/uw3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/uw3;->r(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_0

    .line 12
    :cond_5
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/uw3;->l(Landroid/os/Parcel;I)V

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/qp2;

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/shabakaty/downloader/qp2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;D)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/shabakaty/downloader/qp2;

    return-object p1
.end method
