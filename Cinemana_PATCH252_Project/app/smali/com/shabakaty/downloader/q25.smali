.class public final Lcom/shabakaty/downloader/q25;
.super Ljava/lang/Object;
.source "VideoStatusLocal.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/q25;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/q25$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q25$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q25;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/shabakaty/downloader/q25;-><init>(ZZZZZLjava/lang/String;JI)V

    return-void
.end method

.method public constructor <init>(ZZZZZLjava/lang/String;J)V
    .locals 1

    const-string v0, "watchLater"

    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/q25;->r:Z

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/q25;->s:Z

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/q25;->t:Z

    .line 5
    iput-boolean p4, p0, Lcom/shabakaty/downloader/q25;->u:Z

    .line 6
    iput-boolean p5, p0, Lcom/shabakaty/downloader/q25;->v:Z

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/q25;->w:Ljava/lang/String;

    .line 8
    iput-wide p7, p0, Lcom/shabakaty/downloader/q25;->x:J

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZLjava/lang/String;JI)V
    .locals 8

    and-int/lit8 v0, p9, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    move v4, p4

    :goto_3
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, p5

    :goto_4
    and-int/lit8 v5, p9, 0x20

    if-eqz v5, :cond_5

    const-string v5, "false"

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    and-int/lit8 v6, p9, 0x40

    if-eqz v6, :cond_6

    const-wide/16 v6, 0x0

    goto :goto_6

    :cond_6
    move-wide v6, p7

    :goto_6
    move-object p1, p0

    move p2, v0

    move p3, v2

    move p4, v3

    move p5, v4

    move p6, v1

    move-object p7, v5

    move-wide/from16 p8, v6

    .line 9
    invoke-direct/range {p1 .. p9}, Lcom/shabakaty/downloader/q25;-><init>(ZZZZZLjava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/q25;->w:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/q25;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/q25;->r:Z

    check-cast p1, Lcom/shabakaty/downloader/q25;

    iget-boolean v1, p1, Lcom/shabakaty/downloader/q25;->r:Z

    if-ne v0, v1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/q25;->s:Z

    iget-boolean v1, p1, Lcom/shabakaty/downloader/q25;->s:Z

    if-ne v0, v1, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/shabakaty/downloader/q25;->u:Z

    iget-boolean v1, p1, Lcom/shabakaty/downloader/q25;->u:Z

    if-ne v0, v1, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/shabakaty/downloader/q25;->v:Z

    iget-boolean v1, p1, Lcom/shabakaty/downloader/q25;->v:Z

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/q25;->w:Ljava/lang/String;

    iget-object v1, p1, Lcom/shabakaty/downloader/q25;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-wide v0, p0, Lcom/shabakaty/downloader/q25;->x:J

    iget-wide v2, p1, Lcom/shabakaty/downloader/q25;->x:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 5

    iget-boolean v0, p0, Lcom/shabakaty/downloader/q25;->r:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/shabakaty/downloader/q25;->s:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/shabakaty/downloader/q25;->t:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/shabakaty/downloader/q25;->u:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/shabakaty/downloader/q25;->v:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/q25;->w:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-wide v1, p0, Lcom/shabakaty/downloader/q25;->x:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "VideoStatus(liked="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/shabakaty/downloader/q25;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", watched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/q25;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", annoying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/q25;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disLiked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/q25;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", favorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/q25;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", watchLater="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/q25;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shabakaty/downloader/q25;->x:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "out"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/shabakaty/downloader/q25;->r:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/shabakaty/downloader/q25;->s:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/shabakaty/downloader/q25;->t:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/shabakaty/downloader/q25;->u:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/shabakaty/downloader/q25;->v:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/shabakaty/downloader/q25;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/shabakaty/downloader/q25;->x:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
