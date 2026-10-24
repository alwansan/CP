.class public final Lcom/shabakaty/downloader/af7;
.super Lcom/shabakaty/downloader/oz5;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/ge7;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.android.gms.cast.framework.ISession"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/shabakaty/downloader/oz5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final B0(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xd

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->j2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final F1()Lcom/shabakaty/downloader/gx1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/oz5;->h2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/gx1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/gx1;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final J1(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xf

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->j2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final isConnected()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x5

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/oz5;->h2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget v1, Lcom/shabakaty/downloader/pz5;->a:I

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final isResuming()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x9

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/oz5;->h2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget v1, Lcom/shabakaty/downloader/pz5;->a:I

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final n()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/oz5;->h2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget v1, Lcom/shabakaty/downloader/pz5;->a:I

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final r1(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oz5;->g2()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xc

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/oz5;->j2(ILandroid/os/Parcel;)V

    return-void
.end method
