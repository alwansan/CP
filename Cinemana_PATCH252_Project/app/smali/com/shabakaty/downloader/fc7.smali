.class public final Lcom/shabakaty/downloader/fc7;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/fc7;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Lcom/shabakaty/downloader/e87;

.field public B:Lcom/shabakaty/downloader/av6;

.field public C:Lcom/shabakaty/downloader/jg6;

.field public D:Lcom/shabakaty/downloader/dl6;

.field public E:Lcom/shabakaty/downloader/oo6;

.field public F:[B

.field public G:Z

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:I

.field public v:[Landroid/graphics/Point;

.field public w:Lcom/shabakaty/downloader/lr6;

.field public x:Lcom/shabakaty/downloader/k27;

.field public y:Lcom/shabakaty/downloader/l57;

.field public z:Lcom/shabakaty/downloader/ka7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/sd7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sd7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/fc7;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;Lcom/shabakaty/downloader/lr6;Lcom/shabakaty/downloader/k27;Lcom/shabakaty/downloader/l57;Lcom/shabakaty/downloader/ka7;Lcom/shabakaty/downloader/e87;Lcom/shabakaty/downloader/av6;Lcom/shabakaty/downloader/jg6;Lcom/shabakaty/downloader/dl6;Lcom/shabakaty/downloader/oo6;[BZ)V
    .locals 2

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/shabakaty/downloader/fc7;->r:I

    move-object v1, p2

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->s:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->F:[B

    move-object v1, p3

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->t:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lcom/shabakaty/downloader/fc7;->u:I

    move-object v1, p5

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->v:[Landroid/graphics/Point;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/shabakaty/downloader/fc7;->G:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->w:Lcom/shabakaty/downloader/lr6;

    move-object v1, p7

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->x:Lcom/shabakaty/downloader/k27;

    move-object v1, p8

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->y:Lcom/shabakaty/downloader/l57;

    move-object v1, p9

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->z:Lcom/shabakaty/downloader/ka7;

    move-object v1, p10

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->A:Lcom/shabakaty/downloader/e87;

    move-object v1, p11

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->B:Lcom/shabakaty/downloader/av6;

    move-object v1, p12

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->C:Lcom/shabakaty/downloader/jg6;

    move-object v1, p13

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->D:Lcom/shabakaty/downloader/dl6;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/shabakaty/downloader/fc7;->E:Lcom/shabakaty/downloader/oo6;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget v2, p0, Lcom/shabakaty/downloader/fc7;->r:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/fc7;->s:Ljava/lang/String;

    const/4 v4, 0x0

    .line 6
    invoke-static {p1, v1, v2, v4}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/shabakaty/downloader/fc7;->t:Ljava/lang/String;

    .line 7
    invoke-static {p1, v3, v1, v4}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/shabakaty/downloader/fc7;->u:I

    .line 8
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x6

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/fc7;->v:[Landroid/graphics/Point;

    .line 11
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->l(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/shabakaty/downloader/fc7;->w:Lcom/shabakaty/downloader/lr6;

    .line 12
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/shabakaty/downloader/fc7;->x:Lcom/shabakaty/downloader/k27;

    .line 13
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/shabakaty/downloader/fc7;->y:Lcom/shabakaty/downloader/l57;

    .line 14
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/shabakaty/downloader/fc7;->z:Lcom/shabakaty/downloader/ka7;

    .line 15
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/shabakaty/downloader/fc7;->A:Lcom/shabakaty/downloader/e87;

    .line 16
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/shabakaty/downloader/fc7;->B:Lcom/shabakaty/downloader/av6;

    .line 17
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/shabakaty/downloader/fc7;->C:Lcom/shabakaty/downloader/jg6;

    .line 18
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/shabakaty/downloader/fc7;->D:Lcom/shabakaty/downloader/dl6;

    .line 19
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/shabakaty/downloader/fc7;->E:Lcom/shabakaty/downloader/oo6;

    .line 20
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x10

    iget-object v1, p0, Lcom/shabakaty/downloader/fc7;->F:[B

    .line 21
    invoke-static {p1, p2, v1, v4}, Lcom/shabakaty/downloader/vw3;->c(Landroid/os/Parcel;I[BZ)V

    const/16 p2, 0x11

    iget-boolean v1, p0, Lcom/shabakaty/downloader/fc7;->G:Z

    .line 22
    invoke-static {p1, p2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
