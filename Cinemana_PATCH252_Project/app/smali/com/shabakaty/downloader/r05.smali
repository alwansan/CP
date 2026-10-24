.class public final Lcom/shabakaty/downloader/r05;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/r05;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public r:I

.field public s:I

.field public t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "VideoInfo"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/r05;->u:Lcom/shabakaty/downloader/pk2;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/g16;

    invoke-direct {v0}, Lcom/shabakaty/downloader/g16;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/r05;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/r05;->r:I

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/r05;->s:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/r05;->t:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/r05;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/r05;

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/r05;->s:I

    .line 4
    iget v3, p1, Lcom/shabakaty/downloader/r05;->s:I

    if-ne v1, v3, :cond_2

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/r05;->r:I

    .line 6
    iget v3, p1, Lcom/shabakaty/downloader/r05;->r:I

    if-ne v1, v3, :cond_2

    .line 7
    iget v1, p0, Lcom/shabakaty/downloader/r05;->t:I

    .line 8
    iget p1, p1, Lcom/shabakaty/downloader/r05;->t:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/r05;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/r05;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/r05;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/r05;->r:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/r05;->s:I

    const/4 v1, 0x3

    .line 6
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget v0, p0, Lcom/shabakaty/downloader/r05;->t:I

    .line 9
    invoke-static {p1, v2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
