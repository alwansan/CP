.class public final Lcom/shabakaty/downloader/ow5;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/ow5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:J

.field public final s:J

.field public final t:Z

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Landroid/os/Bundle;

.field public final y:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/tw5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tw5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ow5;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput-wide p1, p0, Lcom/shabakaty/downloader/ow5;->r:J

    iput-wide p3, p0, Lcom/shabakaty/downloader/ow5;->s:J

    iput-boolean p5, p0, Lcom/shabakaty/downloader/ow5;->t:Z

    iput-object p6, p0, Lcom/shabakaty/downloader/ow5;->u:Ljava/lang/String;

    iput-object p7, p0, Lcom/shabakaty/downloader/ow5;->v:Ljava/lang/String;

    iput-object p8, p0, Lcom/shabakaty/downloader/ow5;->w:Ljava/lang/String;

    iput-object p9, p0, Lcom/shabakaty/downloader/ow5;->x:Landroid/os/Bundle;

    iput-object p10, p0, Lcom/shabakaty/downloader/ow5;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    .line 2
    iget-wide v1, p0, Lcom/shabakaty/downloader/ow5;->r:J

    const/16 v3, 0x8

    .line 3
    invoke-static {p1, v0, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x2

    .line 5
    iget-wide v1, p0, Lcom/shabakaty/downloader/ow5;->s:J

    .line 6
    invoke-static {p1, v0, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x3

    .line 8
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ow5;->t:Z

    const/4 v2, 0x4

    .line 9
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/ow5;->u:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v2, v0, v1}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/shabakaty/downloader/ow5;->v:Ljava/lang/String;

    .line 13
    invoke-static {p1, v0, v2, v1}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/shabakaty/downloader/ow5;->w:Ljava/lang/String;

    .line 14
    invoke-static {p1, v0, v2, v1}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/shabakaty/downloader/ow5;->x:Landroid/os/Bundle;

    .line 15
    invoke-static {p1, v0, v2, v1}, Lcom/shabakaty/downloader/vw3;->b(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/shabakaty/downloader/ow5;->y:Ljava/lang/String;

    .line 16
    invoke-static {p1, v3, v0, v1}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
