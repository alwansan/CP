.class public Lcom/shabakaty/downloader/ep2;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/ep2;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final r:J

.field public final s:J

.field public final t:Z

.field public final u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "MediaLiveSeekableRange"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ep2;->v:Lcom/shabakaty/downloader/pk2;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/rp5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rp5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ep2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ep2;->r:J

    .line 3
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ep2;->s:J

    .line 4
    iput-boolean p5, p0, Lcom/shabakaty/downloader/ep2;->t:Z

    .line 5
    iput-boolean p6, p0, Lcom/shabakaty/downloader/ep2;->u:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/ep2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/ep2;

    .line 3
    iget-wide v3, p0, Lcom/shabakaty/downloader/ep2;->r:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/ep2;->r:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/shabakaty/downloader/ep2;->s:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/ep2;->s:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/ep2;->t:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep2;->t:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/ep2;->u:Z

    iget-boolean p1, p1, Lcom/shabakaty/downloader/ep2;->u:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/shabakaty/downloader/ep2;->r:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/ep2;->s:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/ep2;->t:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/ep2;->u:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/ep2;->r:J

    const/4 v2, 0x2

    const/16 v3, 0x8

    .line 3
    invoke-static {p1, v2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-wide v0, p0, Lcom/shabakaty/downloader/ep2;->s:J

    const/4 v2, 0x3

    .line 6
    invoke-static {p1, v2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ep2;->t:Z

    const/4 v1, 0x4

    .line 9
    invoke-static {p1, v1, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ep2;->u:Z

    const/4 v2, 0x5

    .line 12
    invoke-static {p1, v2, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
