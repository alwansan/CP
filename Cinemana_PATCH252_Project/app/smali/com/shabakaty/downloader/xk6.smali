.class public final Lcom/shabakaty/downloader/xk6;
.super Lcom/shabakaty/downloader/jd5;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/fv6;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/f06;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f06;Lcom/shabakaty/downloader/kl3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xk6;->a:Lcom/shabakaty/downloader/f06;

    const-string p1, "com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher"

    .line 2
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/jd5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 p4, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/xk6;->a:Lcom/shabakaty/downloader/f06;

    new-array v0, v0, [Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/f06;->a(Lcom/shabakaty/downloader/f06;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    const/4 p4, 0x1

    :goto_1
    return p4
.end method
