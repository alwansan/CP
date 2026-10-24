.class public final Lcom/shabakaty/downloader/m37;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/shabakaty/downloader/k37;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/uw3;->v(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_0

    .line 2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->u(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/shabakaty/downloader/c27;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/c27;

    move-object/from16 v19, v2

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/shabakaty/downloader/z17;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/z17;

    move-object/from16 v18, v2

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/shabakaty/downloader/w17;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/w17;

    move-object/from16 v17, v2

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/shabakaty/downloader/h27;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/h27;

    move-object/from16 v16, v2

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/shabakaty/downloader/e37;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/e37;

    move-object v15, v2

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/shabakaty/downloader/h37;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/h37;

    move-object v14, v2

    goto :goto_0

    :pswitch_6
    sget-object v3, Lcom/shabakaty/downloader/d37;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/d37;

    move-object v13, v2

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/shabakaty/downloader/z27;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/z27;

    move-object v12, v2

    goto :goto_0

    :pswitch_8
    sget-object v3, Lcom/shabakaty/downloader/f27;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/f27;

    move-object v11, v2

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->r(Landroid/os/Parcel;I)I

    move-result v2

    move v10, v2

    goto :goto_0

    :pswitch_a
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Point;

    move-object v9, v2

    goto/16 :goto_0

    :pswitch_b
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->b(Landroid/os/Parcel;I)[B

    move-result-object v2

    move-object v8, v2

    goto/16 :goto_0

    :pswitch_c
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_0

    :pswitch_d
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_0

    :pswitch_e
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->r(Landroid/os/Parcel;I)I

    move-result v2

    move v5, v2

    goto/16 :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/uw3;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/shabakaty/downloader/k37;

    move-object v4, v0

    invoke-direct/range {v4 .. v19}, Lcom/shabakaty/downloader/k37;-><init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/shabakaty/downloader/f27;Lcom/shabakaty/downloader/z27;Lcom/shabakaty/downloader/d37;Lcom/shabakaty/downloader/h37;Lcom/shabakaty/downloader/e37;Lcom/shabakaty/downloader/h27;Lcom/shabakaty/downloader/w17;Lcom/shabakaty/downloader/z17;Lcom/shabakaty/downloader/c27;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/shabakaty/downloader/k37;

    return-object p1
.end method
