.class public final Lcom/shabakaty/downloader/av6;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/av6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:D

.field public s:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ag7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ag7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/av6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput-wide p1, p0, Lcom/shabakaty/downloader/av6;->r:D

    iput-wide p3, p0, Lcom/shabakaty/downloader/av6;->s:D

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    .line 2
    iget-wide v1, p0, Lcom/shabakaty/downloader/av6;->r:D

    const/16 v3, 0x8

    .line 3
    invoke-static {p1, v0, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    const/4 v0, 0x3

    .line 5
    iget-wide v1, p0, Lcom/shabakaty/downloader/av6;->s:D

    .line 6
    invoke-static {p1, v0, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 8
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
