.class public final Lcom/shabakaty/downloader/oo6;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/oo6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/gf7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gf7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/oo6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/oo6;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/oo6;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/oo6;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/oo6;->u:Ljava/lang/String;

    iput-object p5, p0, Lcom/shabakaty/downloader/oo6;->v:Ljava/lang/String;

    iput-object p6, p0, Lcom/shabakaty/downloader/oo6;->w:Ljava/lang/String;

    iput-object p7, p0, Lcom/shabakaty/downloader/oo6;->x:Ljava/lang/String;

    iput-object p8, p0, Lcom/shabakaty/downloader/oo6;->y:Ljava/lang/String;

    iput-object p9, p0, Lcom/shabakaty/downloader/oo6;->z:Ljava/lang/String;

    iput-object p10, p0, Lcom/shabakaty/downloader/oo6;->A:Ljava/lang/String;

    iput-object p11, p0, Lcom/shabakaty/downloader/oo6;->B:Ljava/lang/String;

    iput-object p12, p0, Lcom/shabakaty/downloader/oo6;->C:Ljava/lang/String;

    iput-object p13, p0, Lcom/shabakaty/downloader/oo6;->D:Ljava/lang/String;

    iput-object p14, p0, Lcom/shabakaty/downloader/oo6;->E:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->r:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->s:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->t:Ljava/lang/String;

    .line 5
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->u:Ljava/lang/String;

    .line 6
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->v:Ljava/lang/String;

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->w:Ljava/lang/String;

    .line 8
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->x:Ljava/lang/String;

    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->y:Ljava/lang/String;

    .line 10
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->z:Ljava/lang/String;

    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->A:Ljava/lang/String;

    .line 12
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->B:Ljava/lang/String;

    .line 13
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->C:Ljava/lang/String;

    .line 14
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->D:Ljava/lang/String;

    .line 15
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/shabakaty/downloader/oo6;->E:Ljava/lang/String;

    .line 16
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
