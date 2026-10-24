.class public abstract Lcom/shabakaty/downloader/we5;
.super Lcom/shabakaty/downloader/jd5;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.ISessionProvider"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/jd5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 3
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/a24$a;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/a24$a;->a:Lcom/shabakaty/downloader/a24;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/a24;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/a24$a;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/a24$a;->a:Lcom/shabakaty/downloader/a24;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/a24;->b()Z

    move-result p1

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    sget p2, Lcom/shabakaty/downloader/pz5;->a:I

    .line 12
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 14
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/a24$a;

    .line 15
    iget-object p2, p2, Lcom/shabakaty/downloader/a24$a;->a:Lcom/shabakaty/downloader/a24;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/a24;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/s14;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/s14;->i()Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 17
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-static {p3, p1}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_1
    return p4
.end method
