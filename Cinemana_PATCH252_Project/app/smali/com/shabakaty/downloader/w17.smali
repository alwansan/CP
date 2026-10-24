.class public final Lcom/shabakaty/downloader/w17;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/w17;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Lcom/shabakaty/downloader/t17;

.field public final x:Lcom/shabakaty/downloader/t17;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/x37;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x37;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/w17;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/t17;Lcom/shabakaty/downloader/t17;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/w17;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/w17;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/w17;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/w17;->u:Ljava/lang/String;

    iput-object p5, p0, Lcom/shabakaty/downloader/w17;->v:Ljava/lang/String;

    iput-object p6, p0, Lcom/shabakaty/downloader/w17;->w:Lcom/shabakaty/downloader/t17;

    iput-object p7, p0, Lcom/shabakaty/downloader/w17;->x:Lcom/shabakaty/downloader/t17;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/w17;->r:Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/shabakaty/downloader/w17;->s:Ljava/lang/String;

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/shabakaty/downloader/w17;->t:Ljava/lang/String;

    .line 5
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/shabakaty/downloader/w17;->u:Ljava/lang/String;

    .line 6
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/shabakaty/downloader/w17;->v:Ljava/lang/String;

    .line 7
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/shabakaty/downloader/w17;->w:Lcom/shabakaty/downloader/t17;

    .line 8
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/shabakaty/downloader/w17;->x:Lcom/shabakaty/downloader/t17;

    .line 9
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 10
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
