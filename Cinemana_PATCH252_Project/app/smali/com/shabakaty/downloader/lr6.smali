.class public final Lcom/shabakaty/downloader/lr6;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/lr6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/sf7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sf7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/lr6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/lr6;->r:I

    iput-object p2, p0, Lcom/shabakaty/downloader/lr6;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/lr6;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/lr6;->u:Ljava/lang/String;

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
    iget v1, p0, Lcom/shabakaty/downloader/lr6;->r:I

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/lr6;->s:Ljava/lang/String;

    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v0, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/shabakaty/downloader/lr6;->t:Ljava/lang/String;

    .line 7
    invoke-static {p1, v2, v0, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/shabakaty/downloader/lr6;->u:Ljava/lang/String;

    .line 8
    invoke-static {p1, v0, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
