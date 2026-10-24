.class public abstract Lcom/shabakaty/downloader/ax1$a;
.super Lcom/shabakaty/downloader/kd5;
.source "com.google.android.gms:play-services-basement@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/ax1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ax1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/kd5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    const/4 p4, 0x0

    const-string v0, "onPostInitComplete can be called only once per call to getRemoteService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/shabakaty/downloader/zs5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/shabakaty/downloader/qz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/zs5;

    .line 4
    move-object v3, p0

    check-cast v3, Lcom/shabakaty/downloader/ij$j;

    .line 5
    iget-object v4, v3, Lcom/shabakaty/downloader/ij$j;->a:Lcom/shabakaty/downloader/ij;

    const-string v5, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    .line 6
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "null reference"

    .line 7
    invoke-static {p2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p2, v4, Lcom/shabakaty/downloader/ij;->R:Lcom/shabakaty/downloader/zs5;

    .line 9
    iget-object p2, p2, Lcom/shabakaty/downloader/zs5;->r:Landroid/os/Bundle;

    .line 10
    iget-object v4, v3, Lcom/shabakaty/downloader/ij$j;->a:Lcom/shabakaty/downloader/ij;

    invoke-static {v4, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, v3, Lcom/shabakaty/downloader/ij$j;->a:Lcom/shabakaty/downloader/ij;

    iget v4, v3, Lcom/shabakaty/downloader/ij$j;->b:I

    invoke-virtual {v0, p1, v2, p2, v4}, Lcom/shabakaty/downloader/ij;->F(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 12
    iput-object p4, v3, Lcom/shabakaty/downloader/ij$j;->a:Lcom/shabakaty/downloader/ij;

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 14
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/qz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 15
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string p4, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, p4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 18
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/shabakaty/downloader/qz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 19
    move-object v3, p0

    check-cast v3, Lcom/shabakaty/downloader/ij$j;

    .line 20
    iget-object v4, v3, Lcom/shabakaty/downloader/ij$j;->a:Lcom/shabakaty/downloader/ij;

    invoke-static {v4, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, v3, Lcom/shabakaty/downloader/ij$j;->a:Lcom/shabakaty/downloader/ij;

    iget v4, v3, Lcom/shabakaty/downloader/ij$j;->b:I

    invoke-virtual {v0, p1, v2, p2, v4}, Lcom/shabakaty/downloader/ij;->F(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 22
    iput-object p4, v3, Lcom/shabakaty/downloader/ij$j;->a:Lcom/shabakaty/downloader/ij;

    .line 23
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
