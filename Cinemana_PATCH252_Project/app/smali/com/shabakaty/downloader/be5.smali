.class public final Lcom/shabakaty/downloader/be5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/shabakaty/downloader/uw;",
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
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/uw3;->v(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    packed-switch v2, :pswitch_data_0

    .line 4
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/uw3;->u(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/uw3;->m(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/uw3;->m(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    .line 7
    :pswitch_2
    sget-object v2, Lcom/shabakaty/downloader/a13;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/shabakaty/downloader/a13;

    goto :goto_0

    .line 9
    :pswitch_3
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/uw3;->q(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v6

    goto :goto_0

    .line 10
    :pswitch_4
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 11
    :pswitch_5
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/uw3;->l(Landroid/os/Parcel;I)V

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/uw;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/uw;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/shabakaty/downloader/a13;ZZ)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/shabakaty/downloader/uw;

    return-object p1
.end method
