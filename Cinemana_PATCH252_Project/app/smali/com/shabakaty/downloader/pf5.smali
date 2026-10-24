.class public abstract Lcom/shabakaty/downloader/pf5;
.super Lcom/shabakaty/downloader/jd5;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/bg5;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/jd5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 p3, 0x1

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    return p4

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/bg5;->V1(I)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/bg5;->k(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    sget-object p1, Lcom/shabakaty/downloader/wf7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/wf7;

    .line 6
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/bg5;->t1(Lcom/shabakaty/downloader/wf7;)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    sget-object p1, Lcom/shabakaty/downloader/ee5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ee5;

    .line 8
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/bg5;->n1(Lcom/shabakaty/downloader/ee5;)V

    goto/16 :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 11
    invoke-interface {p0, p1, v0, v1}, Lcom/shabakaty/downloader/bg5;->a2(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 12
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 15
    invoke-interface {p0, p1, v0, v1, p2}, Lcom/shabakaty/downloader/bg5;->v0(Ljava/lang/String;JI)V

    goto/16 :goto_0

    .line 16
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 17
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/bg5;->X1(I)V

    goto :goto_0

    .line 18
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 19
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/bg5;->t(I)V

    goto :goto_0

    .line 20
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 21
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/bg5;->x1(I)V

    goto :goto_0

    .line 22
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 24
    invoke-interface {p0, p1, p2}, Lcom/shabakaty/downloader/bg5;->m1(Ljava/lang/String;[B)V

    goto :goto_0

    .line 25
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-interface {p0, p1, p2}, Lcom/shabakaty/downloader/bg5;->H1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    .line 30
    sget v2, Lcom/shabakaty/downloader/pz5;->a:I

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p4, 0x1

    .line 32
    :cond_0
    invoke-interface {p0, p1, v0, v1, p4}, Lcom/shabakaty/downloader/bg5;->G(Ljava/lang/String;DZ)V

    goto :goto_0

    .line 33
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 34
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/bg5;->y(I)V

    goto :goto_0

    .line 35
    :pswitch_d
    sget-object p1, Lcom/shabakaty/downloader/nc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/nc;

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p4, 0x1

    .line 39
    :cond_1
    invoke-interface {p0, p1, v0, v1, p4}, Lcom/shabakaty/downloader/bg5;->j(Lcom/shabakaty/downloader/nc;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 40
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 41
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/bg5;->m(I)V

    :goto_0
    return p3

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
