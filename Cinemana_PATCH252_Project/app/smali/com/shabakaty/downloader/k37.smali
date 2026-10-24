.class public final Lcom/shabakaty/downloader/k37;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/k37;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lcom/shabakaty/downloader/h37;

.field public final B:Lcom/shabakaty/downloader/e37;

.field public final C:Lcom/shabakaty/downloader/h27;

.field public final D:Lcom/shabakaty/downloader/w17;

.field public final E:Lcom/shabakaty/downloader/z17;

.field public final F:Lcom/shabakaty/downloader/c27;

.field public final r:I

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:[B

.field public final v:[Landroid/graphics/Point;

.field public final w:I

.field public final x:Lcom/shabakaty/downloader/f27;

.field public final y:Lcom/shabakaty/downloader/z27;

.field public final z:Lcom/shabakaty/downloader/d37;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/m37;

    invoke-direct {v0}, Lcom/shabakaty/downloader/m37;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/k37;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/shabakaty/downloader/f27;Lcom/shabakaty/downloader/z27;Lcom/shabakaty/downloader/d37;Lcom/shabakaty/downloader/h37;Lcom/shabakaty/downloader/e37;Lcom/shabakaty/downloader/h27;Lcom/shabakaty/downloader/w17;Lcom/shabakaty/downloader/z17;Lcom/shabakaty/downloader/c27;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/k37;->r:I

    iput-object p2, p0, Lcom/shabakaty/downloader/k37;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/k37;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/k37;->u:[B

    iput-object p5, p0, Lcom/shabakaty/downloader/k37;->v:[Landroid/graphics/Point;

    iput p6, p0, Lcom/shabakaty/downloader/k37;->w:I

    iput-object p7, p0, Lcom/shabakaty/downloader/k37;->x:Lcom/shabakaty/downloader/f27;

    iput-object p8, p0, Lcom/shabakaty/downloader/k37;->y:Lcom/shabakaty/downloader/z27;

    iput-object p9, p0, Lcom/shabakaty/downloader/k37;->z:Lcom/shabakaty/downloader/d37;

    iput-object p10, p0, Lcom/shabakaty/downloader/k37;->A:Lcom/shabakaty/downloader/h37;

    iput-object p11, p0, Lcom/shabakaty/downloader/k37;->B:Lcom/shabakaty/downloader/e37;

    iput-object p12, p0, Lcom/shabakaty/downloader/k37;->C:Lcom/shabakaty/downloader/h27;

    iput-object p13, p0, Lcom/shabakaty/downloader/k37;->D:Lcom/shabakaty/downloader/w17;

    iput-object p14, p0, Lcom/shabakaty/downloader/k37;->E:Lcom/shabakaty/downloader/z17;

    iput-object p15, p0, Lcom/shabakaty/downloader/k37;->F:Lcom/shabakaty/downloader/c27;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lcom/shabakaty/downloader/k37;->r:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->s:Ljava/lang/String;

    const/4 v4, 0x0

    .line 6
    invoke-static {p1, v1, v2, v4}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->t:Ljava/lang/String;

    .line 7
    invoke-static {p1, v1, v2, v4}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/shabakaty/downloader/k37;->u:[B

    .line 8
    invoke-static {p1, v3, v1, v4}, Lcom/shabakaty/downloader/vw3;->c(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->v:[Landroid/graphics/Point;

    .line 9
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->l(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/shabakaty/downloader/k37;->w:I

    .line 10
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 11
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->x:Lcom/shabakaty/downloader/f27;

    .line 13
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->y:Lcom/shabakaty/downloader/z27;

    .line 14
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->z:Lcom/shabakaty/downloader/d37;

    .line 15
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->A:Lcom/shabakaty/downloader/h37;

    .line 16
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->B:Lcom/shabakaty/downloader/e37;

    .line 17
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->C:Lcom/shabakaty/downloader/h27;

    .line 18
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->D:Lcom/shabakaty/downloader/w17;

    .line 19
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->E:Lcom/shabakaty/downloader/z17;

    .line 20
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/shabakaty/downloader/k37;->F:Lcom/shabakaty/downloader/c27;

    .line 21
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
