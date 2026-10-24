.class public Lcom/shabakaty/downloader/vq1;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-base@@17.4.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/vq1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:I

.field public s:I

.field public t:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/t95;

    invoke-direct {v0}, Lcom/shabakaty/downloader/t95;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vq1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/vq1;->r:I

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/vq1;->s:I

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/vq1;->t:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/vq1;->r:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/vq1;->s:I

    const/4 v1, 0x2

    .line 6
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/vq1;->t:Landroid/os/Bundle;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/downloader/vw3;->b(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 10
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
