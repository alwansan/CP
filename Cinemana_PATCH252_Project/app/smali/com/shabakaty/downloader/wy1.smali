.class public Lcom/shabakaty/downloader/wy1;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/wy1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:I

.field public final s:I

.field public final t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/oa6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/oa6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/wy1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/wy1;->r:I

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/wy1;->s:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/wy1;->t:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/wy1;->r:I

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/wy1;->s:I

    .line 6
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget v0, p0, Lcom/shabakaty/downloader/wy1;->t:I

    .line 9
    invoke-static {p1, v2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
