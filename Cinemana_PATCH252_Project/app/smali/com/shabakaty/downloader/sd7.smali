.class public final Lcom/shabakaty/downloader/sd7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/shabakaty/downloader/fc7;",
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
    .locals 21

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/uw3;->v(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v3

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x0

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
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->m(Landroid/os/Parcel;I)Z

    move-result v2

    move/from16 v20, v2

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->b(Landroid/os/Parcel;I)[B

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/shabakaty/downloader/oo6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/oo6;

    move-object/from16 v18, v2

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/shabakaty/downloader/dl6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/dl6;

    move-object/from16 v17, v2

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/shabakaty/downloader/jg6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/jg6;

    move-object/from16 v16, v2

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/shabakaty/downloader/av6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/av6;

    move-object v15, v2

    goto :goto_0

    :pswitch_6
    sget-object v3, Lcom/shabakaty/downloader/e87;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/e87;

    move-object v14, v2

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/shabakaty/downloader/ka7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ka7;

    move-object v13, v2

    goto :goto_0

    :pswitch_8
    sget-object v3, Lcom/shabakaty/downloader/l57;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/l57;

    move-object v12, v2

    goto :goto_0

    :pswitch_9
    sget-object v3, Lcom/shabakaty/downloader/k27;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/k27;

    move-object v11, v2

    goto :goto_0

    :pswitch_a
    sget-object v3, Lcom/shabakaty/downloader/lr6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/lr6;

    move-object v10, v2

    goto :goto_0

    :pswitch_b
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/uw3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Point;

    move-object v9, v2

    goto/16 :goto_0

    :pswitch_c
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->r(Landroid/os/Parcel;I)I

    move-result v2

    move v8, v2

    goto/16 :goto_0

    :pswitch_d
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_0

    :pswitch_e
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_0

    :pswitch_f
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/uw3;->r(Landroid/os/Parcel;I)I

    move-result v2

    move v5, v2

    goto/16 :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/uw3;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/shabakaty/downloader/fc7;

    move-object v4, v0

    invoke-direct/range {v4 .. v20}, Lcom/shabakaty/downloader/fc7;-><init>(ILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;Lcom/shabakaty/downloader/lr6;Lcom/shabakaty/downloader/k27;Lcom/shabakaty/downloader/l57;Lcom/shabakaty/downloader/ka7;Lcom/shabakaty/downloader/e87;Lcom/shabakaty/downloader/av6;Lcom/shabakaty/downloader/jg6;Lcom/shabakaty/downloader/dl6;Lcom/shabakaty/downloader/oo6;[BZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
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

    new-array p1, p1, [Lcom/shabakaty/downloader/fc7;

    return-object p1
.end method
