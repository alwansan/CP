.class public final Lcom/shabakaty/downloader/tg5;
.super Lcom/shabakaty/downloader/oz5;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/zg5;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/shabakaty/downloader/oz5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final G0(Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/bg6;)Lcom/shabakaty/downloader/xz6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pz5;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-static {v0, p3}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->h2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    sget p3, Lcom/shabakaty/downloader/xz6$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.cast.framework.ICastSession"

    .line 7
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 8
    instance-of v0, p3, Lcom/shabakaty/downloader/xz6;

    if-eqz v0, :cond_1

    .line 9
    move-object p2, p3

    check-cast p2, Lcom/shabakaty/downloader/xz6;

    goto :goto_0

    .line 10
    :cond_1
    new-instance p3, Lcom/shabakaty/downloader/p57;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/p57;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final W0(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ne5;)Lcom/shabakaty/downloader/ge7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p3}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->h2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    sget p3, Lcom/shabakaty/downloader/ge7$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.cast.framework.ISession"

    .line 7
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 8
    instance-of v0, p3, Lcom/shabakaty/downloader/ge7;

    if-eqz v0, :cond_1

    .line 9
    move-object p2, p3

    check-cast p2, Lcom/shabakaty/downloader/ge7;

    goto :goto_0

    .line 10
    :cond_1
    new-instance p3, Lcom/shabakaty/downloader/af7;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/af7;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final o1(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/fv6;IIZJIII)Lcom/shabakaty/downloader/cg6;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object p6

    .line 2
    invoke-static {p6, p1}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {p6, p2}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-virtual {p6, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p6, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {p6, p5}, Landroid/os/Parcel;->writeInt(I)V

    const-wide/32 p1, 0x200000

    .line 7
    invoke-virtual {p6, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x5

    .line 8
    invoke-virtual {p6, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x14d

    .line 9
    invoke-virtual {p6, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x2710

    .line 10
    invoke-virtual {p6, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x6

    .line 11
    invoke-virtual {p0, p1, p6}, Lcom/shabakaty/downloader/oz5;->h2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    sget p3, Lcom/shabakaty/downloader/cg6$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask"

    .line 13
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 14
    instance-of p4, p3, Lcom/shabakaty/downloader/cg6;

    if-eqz p4, :cond_1

    .line 15
    move-object p2, p3

    check-cast p2, Lcom/shabakaty/downloader/cg6;

    goto :goto_0

    .line 16
    :cond_1
    new-instance p3, Lcom/shabakaty/downloader/to6;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/to6;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final p0(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/gx1;)Lcom/shabakaty/downloader/kc7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-static {v0, p3}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->h2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    sget p3, Lcom/shabakaty/downloader/kc7$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.cast.framework.IReconnectionService"

    .line 7
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 8
    instance-of v0, p3, Lcom/shabakaty/downloader/kc7;

    if-eqz v0, :cond_1

    .line 9
    move-object p2, p3

    check-cast p2, Lcom/shabakaty/downloader/kc7;

    goto :goto_0

    .line 10
    :cond_1
    new-instance p3, Lcom/shabakaty/downloader/fe7;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/fe7;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final y0(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/qh5;Ljava/util/Map;)Lcom/shabakaty/downloader/so6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/pz5;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/shabakaty/downloader/pz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->h2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    sget p3, Lcom/shabakaty/downloader/so6$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.cast.framework.ICastContext"

    .line 8
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 9
    instance-of p4, p3, Lcom/shabakaty/downloader/so6;

    if-eqz p4, :cond_1

    .line 10
    move-object p2, p3

    check-cast p2, Lcom/shabakaty/downloader/so6;

    goto :goto_0

    .line 11
    :cond_1
    new-instance p3, Lcom/shabakaty/downloader/dv6;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/dv6;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
