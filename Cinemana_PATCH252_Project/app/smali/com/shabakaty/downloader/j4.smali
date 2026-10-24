.class public Lcom/shabakaty/downloader/j4;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/j4;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final r:J

.field public final s:J

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "AdBreakStatus"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/j4;->w:Lcom/shabakaty/downloader/pk2;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/it5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/it5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/j4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/j4;->r:J

    .line 3
    iput-wide p3, p0, Lcom/shabakaty/downloader/j4;->s:J

    .line 4
    iput-object p5, p0, Lcom/shabakaty/downloader/j4;->t:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/shabakaty/downloader/j4;->u:Ljava/lang/String;

    .line 6
    iput-wide p7, p0, Lcom/shabakaty/downloader/j4;->v:J

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
    instance-of v1, p1, Lcom/shabakaty/downloader/j4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/j4;

    .line 3
    iget-wide v3, p0, Lcom/shabakaty/downloader/j4;->r:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/j4;->r:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/shabakaty/downloader/j4;->s:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/j4;->s:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/j4;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/j4;->t:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/j4;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/j4;->u:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/shabakaty/downloader/j4;->v:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/j4;->v:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/shabakaty/downloader/j4;->r:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/j4;->s:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/j4;->t:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/j4;->u:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/j4;->v:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/j4;->r:J

    const/4 v2, 0x2

    const/16 v3, 0x8

    .line 3
    invoke-static {p1, v2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-wide v0, p0, Lcom/shabakaty/downloader/j4;->s:J

    const/4 v2, 0x3

    .line 6
    invoke-static {p1, v2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/j4;->t:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/j4;->u:Ljava/lang/String;

    const/4 v1, 0x5

    .line 11
    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    iget-wide v0, p0, Lcom/shabakaty/downloader/j4;->v:J

    const/4 v2, 0x6

    .line 13
    invoke-static {p1, v2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 15
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
