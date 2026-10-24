.class public abstract Lcom/shabakaty/downloader/a87;
.super Lcom/shabakaty/downloader/kd5;
.source "com.google.android.gms:play-services-basement@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/q27;


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.ICertData"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/kd5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/kz5;

    .line 2
    iget p1, p1, Lcom/shabakaty/downloader/kz5;->b:I

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 5
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/kz5;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/kz5;->b()Lcom/shabakaty/downloader/gx1;

    move-result-object p1

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-static {p3, p1}, Lcom/shabakaty/downloader/qz5;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    return p2
.end method
