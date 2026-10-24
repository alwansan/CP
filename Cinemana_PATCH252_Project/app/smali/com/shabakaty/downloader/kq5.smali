.class public final Lcom/shabakaty/downloader/kq5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/shabakaty/downloader/gp2;",
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
    .locals 23

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/uw3;->v(Landroid/os/Parcel;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v11, v2

    move-wide/from16 v21, v11

    move-object v8, v4

    move-object v9, v8

    move-object v10, v9

    move-object v15, v10

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-wide v13, v5

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
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->s(Landroid/os/Parcel;I)J

    move-result-wide v21

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 11
    :pswitch_6
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->e(Landroid/os/Parcel;I)[J

    move-result-object v15

    goto :goto_0

    .line 12
    :pswitch_7
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->o(Landroid/os/Parcel;I)D

    move-result-wide v13

    goto :goto_0

    .line 13
    :pswitch_8
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->s(Landroid/os/Parcel;I)J

    move-result-wide v11

    goto :goto_0

    .line 14
    :pswitch_9
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->n(Landroid/os/Parcel;I)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_0

    .line 15
    :pswitch_a
    sget-object v3, Lcom/shabakaty/downloader/rp2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/shabakaty/downloader/rp2;

    goto :goto_0

    .line 17
    :pswitch_b
    sget-object v3, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/cast/MediaInfo;

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/uw3;->l(Landroid/os/Parcel;I)V

    .line 20
    new-instance v0, Lcom/shabakaty/downloader/gp2;

    .line 21
    invoke-static {v4}, Lcom/shabakaty/downloader/yw;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    move-object v7, v0

    .line 22
    invoke-direct/range {v7 .. v22}, Lcom/shabakaty/downloader/gp2;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/shabakaty/downloader/rp2;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
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
    new-array p1, p1, [Lcom/shabakaty/downloader/gp2;

    return-object p1
.end method
