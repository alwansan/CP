.class public abstract Lcom/shabakaty/downloader/he5;
.super Lcom/shabakaty/downloader/jd5;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/oe5;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.IBundleCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/jd5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/rr6;

    iget p4, p2, Lcom/shabakaty/downloader/rr6;->a:I

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p2, p2, Lcom/shabakaty/downloader/rr6;->b:Lcom/shabakaty/downloader/zk4;

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :goto_0
    iget-object p2, p2, Lcom/shabakaty/downloader/rr6;->b:Lcom/shabakaty/downloader/zk4;

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    :goto_1
    return p3

    :cond_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
