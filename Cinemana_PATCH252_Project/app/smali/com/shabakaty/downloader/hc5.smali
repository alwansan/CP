.class public final Lcom/shabakaty/downloader/hc5;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-base@@17.4.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/hc5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:I

.field public final s:Lcom/shabakaty/downloader/gb0;

.field public final t:Lcom/shabakaty/downloader/tc5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fc5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/fc5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/hc5;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/gb0;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/gb0;-><init>(ILandroid/app/PendingIntent;)V

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/shabakaty/downloader/hc5;->r:I

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/hc5;->s:Lcom/shabakaty/downloader/gb0;

    .line 9
    iput-object v2, p0, Lcom/shabakaty/downloader/hc5;->t:Lcom/shabakaty/downloader/tc5;

    return-void
.end method

.method public constructor <init>(ILcom/shabakaty/downloader/gb0;Lcom/shabakaty/downloader/tc5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/hc5;->r:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/hc5;->s:Lcom/shabakaty/downloader/gb0;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/hc5;->t:Lcom/shabakaty/downloader/tc5;

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
    iget v2, p0, Lcom/shabakaty/downloader/hc5;->r:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/hc5;->s:Lcom/shabakaty/downloader/gb0;

    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/hc5;->t:Lcom/shabakaty/downloader/tc5;

    .line 8
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 9
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
