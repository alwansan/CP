.class public final Lcom/shabakaty/downloader/zf3;
.super Lcom/shabakaty/downloader/la4;
.source "PrivateCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/zf3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:J

.field public final s:J

.field public final t:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zf3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zf3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/zf3;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[BJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/la4;-><init>()V

    .line 2
    iput-wide p4, p0, Lcom/shabakaty/downloader/zf3;->r:J

    .line 3
    iput-wide p1, p0, Lcom/shabakaty/downloader/zf3;->s:J

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/zf3;->t:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/shabakaty/downloader/zf3$a;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/shabakaty/downloader/la4;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/zf3;->r:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/zf3;->s:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    iput-object p1, p0, Lcom/shabakaty/downloader/zf3;->t:[B

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/zf3;->r:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/zf3;->s:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/zf3;->t:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
