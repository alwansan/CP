.class public final Lcom/shabakaty/downloader/ia6;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/ia6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Z

.field public y:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/vd7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vd7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ia6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/ia6;->r:I

    iput p2, p0, Lcom/shabakaty/downloader/ia6;->s:I

    iput p3, p0, Lcom/shabakaty/downloader/ia6;->t:I

    iput p4, p0, Lcom/shabakaty/downloader/ia6;->u:I

    iput p5, p0, Lcom/shabakaty/downloader/ia6;->v:I

    iput p6, p0, Lcom/shabakaty/downloader/ia6;->w:I

    iput-boolean p7, p0, Lcom/shabakaty/downloader/ia6;->x:Z

    iput-object p8, p0, Lcom/shabakaty/downloader/ia6;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/ia6;->r:I

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/ia6;->s:I

    .line 6
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget v0, p0, Lcom/shabakaty/downloader/ia6;->t:I

    .line 9
    invoke-static {p1, v2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x5

    .line 11
    iget v1, p0, Lcom/shabakaty/downloader/ia6;->u:I

    .line 12
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    .line 14
    iget v1, p0, Lcom/shabakaty/downloader/ia6;->v:I

    .line 15
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x7

    .line 17
    iget v1, p0, Lcom/shabakaty/downloader/ia6;->w:I

    .line 18
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    .line 20
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ia6;->x:Z

    .line 21
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x9

    .line 23
    iget-object v1, p0, Lcom/shabakaty/downloader/ia6;->y:Ljava/lang/String;

    const/4 v2, 0x0

    .line 24
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 25
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
