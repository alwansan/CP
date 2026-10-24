.class public final Lcom/shabakaty/downloader/xu2;
.super Ljava/lang/Object;
.source "MotionPhotoMetadata.java"

# interfaces
.implements Lcom/shabakaty/downloader/ps2$b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/xu2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:J

.field public final s:J

.field public final t:J

.field public final u:J

.field public final v:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xu2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xu2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/xu2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/xu2;->r:J

    .line 3
    iput-wide p3, p0, Lcom/shabakaty/downloader/xu2;->s:J

    .line 4
    iput-wide p5, p0, Lcom/shabakaty/downloader/xu2;->t:J

    .line 5
    iput-wide p7, p0, Lcom/shabakaty/downloader/xu2;->u:J

    .line 6
    iput-wide p9, p0, Lcom/shabakaty/downloader/xu2;->v:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/shabakaty/downloader/xu2$a;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/xu2;->r:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/xu2;->s:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/xu2;->t:J

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/xu2;->u:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/xu2;->v:J

    return-void
.end method


# virtual methods
.method public synthetic D0(Lcom/shabakaty/downloader/hp2$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/qs2;->c(Lcom/shabakaty/downloader/ps2$b;Lcom/shabakaty/downloader/hp2$b;)V

    return-void
.end method

.method public synthetic Z()Lcom/shabakaty/downloader/wh1;
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/qs2;->b(Lcom/shabakaty/downloader/ps2$b;)Lcom/shabakaty/downloader/wh1;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/shabakaty/downloader/xu2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/xu2;

    .line 3
    iget-wide v2, p0, Lcom/shabakaty/downloader/xu2;->r:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/xu2;->r:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/shabakaty/downloader/xu2;->s:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/xu2;->s:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/shabakaty/downloader/xu2;->t:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/xu2;->t:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/shabakaty/downloader/xu2;->u:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/xu2;->u:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/shabakaty/downloader/xu2;->v:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/xu2;->v:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/xu2;->r:J

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/tp6;->e(J)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lcom/shabakaty/downloader/xu2;->s:J

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/tp6;->e(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-wide v2, p0, Lcom/shabakaty/downloader/xu2;->t:J

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/tp6;->e(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-wide v1, p0, Lcom/shabakaty/downloader/xu2;->u:J

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/tp6;->e(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-wide v2, p0, Lcom/shabakaty/downloader/xu2;->v:J

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/tp6;->e(J)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic q1()[B
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/qs2;->a(Lcom/shabakaty/downloader/ps2$b;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/xu2;->r:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/xu2;->s:J

    iget-wide v4, p0, Lcom/shabakaty/downloader/xu2;->t:J

    iget-wide v6, p0, Lcom/shabakaty/downloader/xu2;->u:J

    iget-wide v8, p0, Lcom/shabakaty/downloader/xu2;->v:J

    const/16 v10, 0xda

    const-string v11, "Motion photo metadata: photoStartPosition="

    const-string v12, ", photoSize="

    invoke-static {v10, v11, v0, v1, v12}, Lcom/shabakaty/downloader/af;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", photoPresentationTimestampUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/xu2;->r:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/xu2;->s:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/xu2;->t:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-wide v0, p0, Lcom/shabakaty/downloader/xu2;->u:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-wide v0, p0, Lcom/shabakaty/downloader/xu2;->v:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
