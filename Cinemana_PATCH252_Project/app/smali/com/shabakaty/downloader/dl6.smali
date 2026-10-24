.class public final Lcom/shabakaty/downloader/dl6;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/dl6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:Lcom/shabakaty/downloader/sz6;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:[Lcom/shabakaty/downloader/k27;

.field public v:[Lcom/shabakaty/downloader/lr6;

.field public w:[Ljava/lang/String;

.field public x:[Lcom/shabakaty/downloader/b56;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/we7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/we7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/dl6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/sz6;Ljava/lang/String;Ljava/lang/String;[Lcom/shabakaty/downloader/k27;[Lcom/shabakaty/downloader/lr6;[Ljava/lang/String;[Lcom/shabakaty/downloader/b56;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dl6;->r:Lcom/shabakaty/downloader/sz6;

    iput-object p2, p0, Lcom/shabakaty/downloader/dl6;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/dl6;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/dl6;->u:[Lcom/shabakaty/downloader/k27;

    iput-object p5, p0, Lcom/shabakaty/downloader/dl6;->v:[Lcom/shabakaty/downloader/lr6;

    iput-object p6, p0, Lcom/shabakaty/downloader/dl6;->w:[Ljava/lang/String;

    iput-object p7, p0, Lcom/shabakaty/downloader/dl6;->x:[Lcom/shabakaty/downloader/b56;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/dl6;->r:Lcom/shabakaty/downloader/sz6;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/shabakaty/downloader/dl6;->s:Ljava/lang/String;

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/shabakaty/downloader/dl6;->t:Ljava/lang/String;

    .line 5
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/shabakaty/downloader/dl6;->u:[Lcom/shabakaty/downloader/k27;

    .line 6
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->l(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/shabakaty/downloader/dl6;->v:[Lcom/shabakaty/downloader/lr6;

    .line 7
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->l(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/shabakaty/downloader/dl6;->w:[Ljava/lang/String;

    .line 8
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->j(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/shabakaty/downloader/dl6;->x:[Lcom/shabakaty/downloader/b56;

    .line 9
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->l(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 10
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
