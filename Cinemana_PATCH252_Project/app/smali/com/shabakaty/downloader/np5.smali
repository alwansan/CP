.class public final Lcom/shabakaty/downloader/np5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/cast/MediaInfo;",
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
    .locals 24

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/uw3;->v(Landroid/os/Parcel;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v11, v2

    move-wide/from16 v20, v11

    move-object v7, v4

    move-object v9, v7

    move-object v10, v9

    move-object v13, v10

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v22, v19

    move-object/from16 v23, v22

    const/4 v8, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_0

    .line 4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->u(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v23

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->s(Landroid/os/Parcel;I)J

    move-result-wide v20

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object v3, Lcom/shabakaty/downloader/zz4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/shabakaty/downloader/zz4;

    goto :goto_0

    .line 10
    :pswitch_4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 11
    :pswitch_5
    sget-object v3, Lcom/shabakaty/downloader/h4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    goto :goto_0

    .line 13
    :pswitch_6
    sget-object v3, Lcom/shabakaty/downloader/i4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    goto :goto_0

    .line 15
    :pswitch_7
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 16
    :pswitch_8
    sget-object v3, Lcom/shabakaty/downloader/dm4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/shabakaty/downloader/dm4;

    goto :goto_0

    .line 18
    :pswitch_9
    sget-object v3, Lcom/google/android/gms/cast/MediaTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    goto :goto_0

    .line 20
    :pswitch_a
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->s(Landroid/os/Parcel;I)J

    move-result-wide v11

    goto :goto_0

    .line 21
    :pswitch_b
    sget-object v3, Lcom/shabakaty/downloader/ip2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/shabakaty/downloader/ip2;

    goto :goto_0

    .line 23
    :pswitch_c
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 24
    :pswitch_d
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->r(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_0

    .line 25
    :pswitch_e
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/uw3;->l(Landroid/os/Parcel;I)V

    .line 27
    new-instance v0, Lcom/google/android/gms/cast/MediaInfo;

    move-object v6, v0

    invoke-direct/range {v6 .. v23}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/downloader/ip2;JLjava/util/List;Lcom/shabakaty/downloader/dm4;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/zz4;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaInfo;

    return-object p1
.end method
