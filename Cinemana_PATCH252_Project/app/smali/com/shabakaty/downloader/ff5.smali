.class public abstract Lcom/shabakaty/downloader/ff5;
.super Lcom/shabakaty/downloader/jd5;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/ne5;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.ISessionProxy"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/jd5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 1
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/s14$a;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/s14$a;->a:Lcom/shabakaty/downloader/s14;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/s14;->e(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 6
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/s14$a;

    .line 7
    iget-object p2, p2, Lcom/shabakaty/downloader/s14$a;->a:Lcom/shabakaty/downloader/s14;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/s14;->f(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 11
    :pswitch_3
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/s14$a;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/s14$a;->a:Lcom/shabakaty/downloader/s14;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s14;->b()J

    move-result-wide p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 15
    :pswitch_4
    sget p1, Lcom/shabakaty/downloader/pz5;->a:I

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 17
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/s14$a;

    .line 18
    iget-object p1, p1, Lcom/shabakaty/downloader/s14$a;->a:Lcom/shabakaty/downloader/s14;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/s14;->a(Z)V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 20
    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 21
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/s14$a;

    .line 22
    iget-object p2, p2, Lcom/shabakaty/downloader/s14$a;->a:Lcom/shabakaty/downloader/s14;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/s14;->g(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 24
    :pswitch_6
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 25
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/s14$a;

    .line 26
    iget-object p2, p2, Lcom/shabakaty/downloader/s14$a;->a:Lcom/shabakaty/downloader/s14;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/s14;->h(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 28
    :pswitch_7
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/s14$a;

    .line 29
    iget-object p1, p1, Lcom/shabakaty/downloader/s14$a;->a:Lcom/shabakaty/downloader/s14;

    .line 30
    new-instance p2, Lcom/shabakaty/downloader/p43;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-static {p3, p2}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
