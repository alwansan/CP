.class public final Lcom/shabakaty/downloader/ep5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/shabakaty/downloader/if2;",
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
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/uw3;->v(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    .line 4
    invoke-static {p1, v5}, Lcom/shabakaty/downloader/uw3;->u(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v4, Lcom/shabakaty/downloader/sg0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    invoke-static {p1, v5, v4}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/sg0;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1, v5}, Lcom/shabakaty/downloader/uw3;->m(Landroid/os/Parcel;I)Z

    move-result v2

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p1, v5}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p1, v5}, Lcom/shabakaty/downloader/uw3;->m(Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0

    .line 10
    :cond_4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/uw3;->l(Landroid/os/Parcel;I)V

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/if2;

    invoke-direct {p1, v1, v3, v2, v4}, Lcom/shabakaty/downloader/if2;-><init>(ZLjava/lang/String;ZLcom/shabakaty/downloader/sg0;)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/shabakaty/downloader/if2;

    return-object p1
.end method
