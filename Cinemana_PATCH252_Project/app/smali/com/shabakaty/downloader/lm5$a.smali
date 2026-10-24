.class public abstract Lcom/shabakaty/downloader/lm5$a;
.super Lcom/shabakaty/downloader/jd5;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/lm5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/lm5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.media.IImagePicker"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/jd5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/ip2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ip2;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/wy1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/wy1;

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/ez1$a;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ez1$a;->a:Lcom/shabakaty/downloader/ez1;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/ez1;->b(Lcom/shabakaty/downloader/ip2;Lcom/shabakaty/downloader/wy1;)Lcom/shabakaty/downloader/s55;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/shabakaty/downloader/pz5;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    const p1, 0xbdfcc1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 9
    :cond_2
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/ez1$a;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/ez1$a;->a:Lcom/shabakaty/downloader/ez1;

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/p43;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-static {p3, p2}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 14
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/ip2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ip2;

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 16
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/ez1$a;

    .line 17
    iget-object p2, p2, Lcom/shabakaty/downloader/ez1$a;->a:Lcom/shabakaty/downloader/ez1;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ez1;->a(Lcom/shabakaty/downloader/ip2;)Lcom/shabakaty/downloader/s55;

    move-result-object p1

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-static {p3, p1}, Lcom/shabakaty/downloader/pz5;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_0
    return p4
.end method
