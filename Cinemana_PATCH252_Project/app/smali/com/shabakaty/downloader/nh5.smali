.class public final Lcom/shabakaty/downloader/nh5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/shabakaty/downloader/rg5;",
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
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/uw3;->v(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 4
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/uw3;->u(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lcom/shabakaty/downloader/yf5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    invoke-static {p1, v3, v2}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/yf5;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/yf5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p1, v3, v1}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/yf5;

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/uw3;->l(Landroid/os/Parcel;I)V

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/rg5;

    invoke-direct {p1, v1, v2}, Lcom/shabakaty/downloader/rg5;-><init>(Lcom/shabakaty/downloader/yf5;Lcom/shabakaty/downloader/yf5;)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/shabakaty/downloader/rg5;

    return-object p1
.end method
